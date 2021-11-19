package service;

import org.solent.ood.pos.client.dto.CreditCard;
import org.solent.ood.pos.client.impl.BankRestClientImpl;
import org.solent.ood.pos.client.model.client.BankRestClient;
import org.solent.ood.pos.client.dto.TransactionReplyMessage;
import solent.ac.uk.ood.examples.cardcheck.RegexCardValidator;
import dao.PropertiesDao;
import dao.WebObjectFactory;
import javax.servlet.http.HttpServletRequest;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;



public class RestController {
    
    public static final PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
    public static final String BANK_URL = propertiesDao.getProperty("rest_url");
    public static final BankRestClient client = new BankRestClientImpl(BANK_URL);
    public static final Logger log = LogManager.getLogger(RestController.class);
    public static CreditCard cardFrom = null;
    public static CreditCard cardTo = null;

 

    //posDevice recieving user details
    public static String posDevice(HttpServletRequest request) {  
        String event = request.getParameter("event");
        
        //Users Card details
        String cardfrom_number = request.getParameter("cardfrom_number");
        String cardfrom_cvv_number = request.getParameter("cardfrom_cvv_number");
        String cardfrom_issue_number = request.getParameter("cardfrom_issue_number");
        String cardfrom_expiry_date = request.getParameter("cardfrom_expiry_date");
        String cardfrom_name = request.getParameter("cardfrom_name");
        double amount = Double.parseDouble(request.getParameter("amount"));

        //Refund Card details
        String cardto_name = propertiesDao.getProperty("cardto_name");
        String cardto_number = propertiesDao.getProperty("cardto_number");
        String cardto_issue_number = propertiesDao.getProperty("cardto_issue_number");
        String cardto_expiry_date = propertiesDao.getProperty("cardto_expiry_date");
        String cardto_cvv_number = propertiesDao.getProperty("cardto_cvv_number");
        
        // Setting users card details.
        cardFrom = new CreditCard();
        cardFrom.setName(cardfrom_name);
        cardFrom.setCardnumber(cardfrom_number);
        cardFrom.setCvv(cardfrom_cvv_number);
        cardFrom.setEndDate(cardfrom_expiry_date);
        cardFrom.setIssueNumber(cardfrom_issue_number);
        
        
        //Refund or return
        cardTo = new CreditCard();
        cardTo.setName(cardto_name);
        cardTo.setCardnumber(cardto_number);
        cardTo.setCvv(cardto_cvv_number);
        cardTo.setEndDate(cardto_expiry_date);
        cardTo.setIssueNumber(cardto_issue_number);
        

        //posMode send - return - validate
        if (null != event) switch (event) {
            case "transaction-sent":
                return transactionCompleted(cardFrom, cardTo, amount).toString();
            case "refund-transaction":
                return refundCompleted(cardTo, cardFrom, amount).toString();
            case "check":
                return checkLunnCode(cardFrom);
            default:
                break;
        }
        return "Error";
    }
    
    //Client Returning Transaction Results.
       public static TransactionReplyMessage transactionCompleted(CreditCard cardFrom, CreditCard cardTo, double amount) {
        return client.transferMoney(cardFrom, cardTo, amount);
    }

        public static TransactionReplyMessage refundCompleted(CreditCard cardTo, CreditCard cardFrom, double amount) {
        return client.transferMoney(cardTo, cardFrom, amount);
    }
        public static String checkLunnCode(CreditCard cardTo) {
        return RegexCardValidator.isValid(cardTo.getCardnumber()).getMessage();
    }
}
