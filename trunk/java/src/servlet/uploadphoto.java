package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

import journey.agents.JyPhotoAgent;
import journey.agents.JyUserAgent;
import journey.common.FileFilter;
import journey.model.JyPhoto;
import journey.model.JyUser;

import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.FileItem;

public class uploadphoto extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public uploadphoto() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String uploadDirectory = this.getServletContext().getInitParameter("UploadDirectory");      // Get the upload directory from the web.xml file.
        
		if(uploadDirectory == null || 
				uploadDirectory.length() <= 0)
		{
			uploadDirectory = /*request.getContextPath() + */"/upload";
		}
		
		if(uploadDirectory.indexOf(":") == -1)
		{
			uploadDirectory = request.getSession().getServletContext().getRealPath(uploadDirectory);
		}
		
		if(!new File(uploadDirectory).exists())
		{
			new File(uploadDirectory).mkdirs();
		}		
		
        ArrayList<String> allowedFormats = new ArrayList<String>();                                 // Allowed image format types are stored in an ArrayList.
        allowedFormats.add("jpeg");
        allowedFormats.add("png");
        allowedFormats.add("gif");
        allowedFormats.add("jpg");
        
        File disk = null;
        FileItem item = null;
        DiskFileItemFactory factory = new DiskFileItemFactory();                                    // We use the FileUpload package provided by Apache to process the request.

        ServletFileUpload upload = new ServletFileUpload(factory);

        ListIterator iterator = null;
        List items = null;
        try {
			items = upload.parseRequest(request);
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			return;
		}
        iterator = items.listIterator();

        String partyid = null;
        String title = null;
        String describe = null;
        String serial = null;
        String newFileName = null;
        try {           
            while( iterator.hasNext() )                                                             // Loop over the items in the request.
            {             
              item = (FileItem) iterator.next();

              // If the current item is an HTML form field...
              if( item.isFormField() )
              {
                /*
                 * First item from Flex is Filename, automatically 
                 * added to the HTTP request header when uploading
                 * a file. We'll set the variable when we iterate 
                 * to the correct URLVariable for the employeeID.
                 * The last item is another field that Flex adds
                 * automatically to the HTTP request header, 
                 * Upload, the value for the upload button.
                 */
                if (item.getFieldName().equalsIgnoreCase("title")){
                	title = item.getString();                                                  // Get the value and store it.
                }
                else if(item.getFieldName().equalsIgnoreCase("describe")){
                	describe = item.getString();
                }
                else if(item.getFieldName().equalsIgnoreCase("partyid")){
                	partyid = item.getString();
                } 
               } else {  // If the item is a file...
                    /* 
                     * Use an ImageInputStream to validate the file's format name. 
                     * This actually reads the image's internal file format, versus
                     * reading the file extension, which isn't always reliable.
                     */ 
                    ImageInputStream imageInputStream = ImageIO.createImageInputStream(item.getInputStream());
                    Iterator<ImageReader> imageReaders = ImageIO.getImageReaders(imageInputStream);
                   
                    ImageReader imageReader = null;
                  
                    if(imageReaders.hasNext()){                                                     // Get the next (only) image.
                        imageReader = imageReaders.next();
                    }
                   
                    /* 
                    * Non-image files will throw a NullPointerException on the next line.
                    * This code uses a high-level Try/Catch block, but you can use a
                    * more fine-grained exception handling mechanism.
                    */ 
                    String imageFormat = imageReader.getFormatName();
                    serial = UUID.randomUUID().toString();
                    newFileName = serial + "." + imageFormat.toLowerCase();                            // New image's filename, concatenation of employee ID and image format.
                    
                    if (allowedFormats.contains(imageFormat.toLowerCase())){                        // If the image format is one of the allowed ones...
                        /*
                         * Custom FileFilter implements java.io.FilenameFilter.
                         * See FileFilter.java.
                         */
                        FileFilter fileFilter = new FileFilter();                                   // Declare and instantiate a FileFilter object.
                        fileFilter.setImageTypes(allowedFormats);

                        disk = new File(uploadDirectory + File.separatorChar + newFileName);                             // Instantiate a File object for the file to be written.
                        item.write(disk);
                    }
                   
                    /*
                     * If you're processing multiple files, you'd place 
                     * these lines outside of the loop.
                     */
                    imageReader.dispose();
                    imageInputStream.close();
                    
                    /*
                     * TODO: You can add code here to store the image name to a database.
                     */
              }
            }
        }
        /*
         * Some very basic exception handling. 
         * Modify as per your needs.
         */
        catch (FileUploadException fileUploadException) {
            out.println(fileUploadException.getMessage());
        }
        catch (IOException ioException) {
            out.println(ioException.getMessage());
        }
        catch (NullPointerException exception) {
            out.println(exception.getMessage());
        }
        catch (Exception e){
            out.println(e.getMessage());
        }
        
//        JyUserAgent jua = new JyUserAgent();
//        if(jua.isLogin() && 
//        		partyid.length()>0 && title.length()>0 && describe.length()>0 && serial.length()>0)
//        {
//        	JyPhotoAgent jpa = new JyPhotoAgent();
//        	
//        	boolean res = jpa.addPhoto(partyid, title, describe, serial);
//        	
//        	out.println(res);
//        }
//        else
//        {
//        	out.println("Unknown error.");
//        }
        
        out.println(newFileName);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
