package journey.agents;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import flex.messaging.MessageBroker;
import flex.messaging.MessageDestination;
//import flex.messaging.config.ServerSettings;
import flex.messaging.services.MessageService;

public class JyMessageAgent {
	
	private static List<String> rooms = Collections.synchronizedList(new ArrayList<String>());
	
	public JyMessageAgent()
	{
	}
	
	public boolean startMessage(String partyID)
	{
		if (roomExists(partyID))
		{
			return false;
		}
		
		// Create a new Message destination dynamically
		String serviceId = "message-service";
		MessageBroker broker = MessageBroker.getMessageBroker(null);
		MessageService service = (MessageService) broker.getService(serviceId);
		MessageDestination destination = (MessageDestination) service.createDestination(partyID);

		if (service.isStarted())
		{
			destination.start();
		}
		
		synchronized(rooms) {	
			rooms.add(partyID);
		}
		
		return(true);
	}
	
	public boolean roomExists(String id)
	{
		int size = rooms.size();
		for (int i=0; i<size; i++)
		{
			if ( ((String)rooms.get(i)).equals(id) ) 
			{
				return true;
			}
		}
		return false;
	}
}
