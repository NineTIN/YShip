package ninetin.include.common;

import java.util.Iterator;
import java.util.Map.Entry;

import org.apache.log4j.Logger;

public class ValidCheckUtil {
	Logger log = Logger.getLogger(this.getClass());

	public boolean Checker(Iterator<Entry<String,Object>> _iterator){
		Iterator<Entry<String,Object>> iterator = _iterator;
		Entry<String,Object> entry = null;
        int checkCount = 0;
        int size = 0;

        while(iterator.hasNext()){
        	size++;
            entry = iterator.next();
            
           	if(!entry.getValue().equals("")){
            	checkCount++;
            }
            log.debug("key : "+entry.getKey()+", value : "+entry.getValue());
        }
        
        if(size == checkCount){
        	return true;
        }
		
		return false;
	}
}
