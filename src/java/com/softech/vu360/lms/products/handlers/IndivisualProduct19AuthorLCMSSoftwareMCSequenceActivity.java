package com.softech.vu360.lms.products.handlers;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;

import org.apache.log4j.Logger;

import com.softech.vu360.lms.service.SelfServiceService;
import com.softech.vu360.lms.webservice.message.selfservice.OrderCreatedRequest;

/* this class handler will use for following product
 * Author LCMS Software � Drag-and-drop Simple Categories Activity
 */

public class IndivisualProduct19AuthorLCMSSoftwareMCSequenceActivity implements Handler{

	private static final Logger LOGGER = Logger.getLogger(IndivisualProduct16AuthorLCMSSoftwareMCSimpleActivity.class.getName());
	final String SCENE_TEMPLATE_NAME = "Author LCMS Software - MC Sequence";
	@Override
	public boolean init() throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean exec(Object dataBundle, Exception errors) throws Exception {
		try{
			LOGGER.info("...IndivisualProduct19AuthorLCMSSoftwareMCSequenceActivity ..... exec().. Start");
			
			Hashtable obj = (Hashtable<String, Object>) dataBundle;
			SelfServiceService  selfServiceService = (SelfServiceService) obj.get("selfServiceService");
			selfServiceService.insertSceneTemplateByFreemium(paramSetting(obj));
			
			LOGGER.info("...IndivisualProduct19AuthorLCMSSoftwareMCSequenceActivity ..... exec().. End");
			return true;
		}catch(Exception ex){
			LOGGER.info("...IndivisualProduct19AuthorLCMSSoftwareMCSequenceActivity.java ..... exec().."+ ex.getMessage());
			return false;
		}
		
	}

	@Override
	public boolean exit(Object dataBundle, Exception errors) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	
	public Hashtable paramSetting(Hashtable<String, Object> dataBundle){
		LOGGER.info("...IndivisualProduct19AuthorLCMSSoftwareMCSequenceActivity ..... paramSetting().. Start");
		
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());  
		
		OrderCreatedRequest orderCreatedRequest = (OrderCreatedRequest)dataBundle.get("orderCreatedRequest");
  	
		Hashtable<String, String> colFreemiumaccount = new Hashtable<String, String>();
		colFreemiumaccount.put("UserName", orderCreatedRequest.getOrder().getCustomer().getPrimaryContact().getAuthenticationCredential().getUsername()) ;
		colFreemiumaccount.put("SceneTemplateName", SCENE_TEMPLATE_NAME) ;
		colFreemiumaccount.put("EffectiveFrom", format.format(calendar.getTime())) ;
		calendar.add(Calendar.YEAR, 1);
		colFreemiumaccount.put("EffectiveTo", format.format(calendar.getTime())) ;
		
		LOGGER.info("...IndivisualProduct19AuthorLCMSSoftwareMCSequenceActivity ..... paramSetting().. End");
		return colFreemiumaccount;
	}
}
