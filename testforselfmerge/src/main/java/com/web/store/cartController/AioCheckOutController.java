package com.web.store.cartController;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.model.CartBean;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import ecpay.payment.integration.domain.AioCheckOutATM;
import ecpay.payment.integration.domain.AioCheckOutBARCODE;
import ecpay.payment.integration.domain.AioCheckOutCVS;
import ecpay.payment.integration.domain.AioCheckOutDevide;
import ecpay.payment.integration.domain.AioCheckOutOneTime;
import ecpay.payment.integration.domain.AioCheckOutPeriod;
import ecpay.payment.integration.domain.AioCheckOutWebATM;
import ecpay.payment.integration.domain.InvoiceObj;
import ecpay.payment.integration.exception.EcpayException;

@Controller
public class AioCheckOutController {
	AllInOne all;
	@RequestMapping(value = "/frontEnd/aioCheckOut", method = RequestMethod.GET)
	public String aioCheckOut(Model model){
		model.addAttribute("info", "��ɪ��y�I�ڿ�ܭ�");
		return "aioCheckOut";
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutALL", method = RequestMethod.GET)
	public ModelAndView aioCheckOutALL(){
		return new ModelAndView("aioCheckOutALL", "command", new AioCheckOutALL());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutALL", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutALL(AioCheckOutALL aio) throws UnsupportedEncodingException{
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�������}�o��
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(EcpayException e){
			throw new Error(e.getNewExceptionMessage());
		}
		
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutATM", method = RequestMethod.GET)
	public ModelAndView aioCheckOutATM(){
		return new ModelAndView("aioCheckOutATM", "command", new AioCheckOutATM());
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutATM", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutATM(AioCheckOutATM aio, @RequestParam(value="ChooseSubPayment")String payment) throws UnsupportedEncodingException{
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�����}�o��
		invoice.setRelateNumber(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 30));
		invoice.setCustomerID("123456");
		invoice.setCarruerType("1");
		invoice.setTaxType("1");
		invoice.setCarruerNum("");
		invoice.setDonation("2");
		invoice.setLoveCode("X123456");
		invoice.setPrint("0");
		//DB�̭����
		invoice.setInvoiceItemName("�q��");
		invoice.setInvoiceItemCount("1");
		invoice.setInvoiceItemWord("�x");
		invoice.setInvoiceItemPrice("50");
		invoice.setInvoiceItemTaxType("1");
		//�Ȥ��J�t�Ωұo����T
		invoice.setCustomerName("Mark");
		invoice.setCustomerAddr("�x�_");
		invoice.setCustomerPhone("0911429215");
		//�t�ΨM�w����Ѽ�
		invoice.setDelayDay("1");
		//�t�γ]�w�r�y���O
		invoice.setInvType("07");
		//�R�[���
		aio.setChooseSubPayment(payment);
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("�q��");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
	
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(EcpayException e){
			throw new Error(e.getNewExceptionMessage());
		}
		
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutBARCODE", method = RequestMethod.GET)
	public ModelAndView aioCheckOutBARCODE(){
		return new ModelAndView("aioCheckOutBARCODE", "command", new AioCheckOutBARCODE());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutBARCODE", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutBARCODE(AioCheckOutBARCODE aio) throws UnsupportedEncodingException{
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�������}�o��
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		//�t�Ӧۦ�]�w
		aio.setStoreExpireDate("7");
		aio.setDesc_1("d1");
		aio.setDesc_2("d2");
		aio.setDesc_3("d3");
		aio.setDesc_4("d4");
		aio.setPaymentInfoURL("http://www.yahoo.com.tw");
		aio.setClientBackURL("");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(EcpayException e){
			throw new Error(e.getNewExceptionMessage());
		}
		
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutCVS", method = RequestMethod.GET)
	public ModelAndView aioCheckOutCVS(){
		return new ModelAndView("aioCheckOutCVS", "command", new AioCheckOutCVS());
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutCVS", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutCVS(AioCheckOutCVS aio, @RequestParam(value="ChooseSubPayment")String payment) throws UnsupportedEncodingException{
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�����}�o��
		invoice.setRelateNumber(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 30));
		invoice.setCustomerID("123456");
		invoice.setCarruerType("1");
		invoice.setTaxType("1");
		invoice.setCarruerNum("");
		invoice.setDonation("2");
		invoice.setLoveCode("X123456");
		invoice.setPrint("0");
		//DB�̭����
		invoice.setInvoiceItemName("�q��|�q��");
		invoice.setInvoiceItemCount("1|1");
		invoice.setInvoiceItemWord("�x|�x");
		invoice.setInvoiceItemPrice("50|50");
		invoice.setInvoiceItemTaxType("1|1");
		//�Ȥ��J�t�Ωұo����T
		invoice.setCustomerName("Mark");
		invoice.setCustomerAddr("�x�_");
		invoice.setCustomerPhone("0911429215");
		//�t�ΨM�w����Ѽ�
		invoice.setDelayDay("1");
		//�t�γ]�w�r�y���O
		invoice.setInvType("07");
		//�R�[���
		aio.setChooseSubPayment(payment);
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("�q��50��#�q��50��");
		aio.setTotalAmount("100");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(EcpayException e){
			throw new Error(e.getNewExceptionMessage());
		}
		
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutDevide", method = RequestMethod.GET)
	public ModelAndView aioCheckOutDevide(){
		return new ModelAndView("aioCheckOutDevide", "command", new AioCheckOutDevide());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutDevide", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutDevide(AioCheckOutDevide aio) throws UnsupportedEncodingException{
		all = new AllInOne("");
		System.out.println(aio.getRemark());
		InvoiceObj invoice = new InvoiceObj();
		//�������}�o��
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		//��x������ �ϥΨ�d�������`�I�ڪ��B�C
		aio.setInstallmentAmount("60");
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(EcpayException e){
			throw new Error(e.getNewExceptionMessage());
		}
		
	}
	
//	@RequestMapping(value = "/aioCheckOut/aioCheckOutOneTime", method = RequestMethod.GET)
//	public ModelAndView aioCheckOutOneTime(){
//		return new ModelAndView("aioCheckOutOneTime", "command", new AioCheckOutOneTime());
//	}
//	method = RequestMethod.POST
//	
	@RequestMapping(value = "/aioCheckOut/aioCheckOutOneTime",  produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutDevide(AioCheckOutOneTime aio,HttpSession session) throws UnsupportedEncodingException{
		all = new AllInOne("");
		System.out.println(aio.getRemark());
		InvoiceObj invoice = new InvoiceObj();
		CartBean checkoutcart =(CartBean) session.getAttribute("checkoutcart");
		Set<String> keys=checkoutcart.getCartitemmap().keySet();
        Iterator<String> iterator=keys.iterator();
        String items="";
        while (iterator.hasNext()){
        	String keyid=iterator.next();
        	String itemname= checkoutcart.getCartitemmap().get(keyid).getProductBean().getTitle();        	
        	items=itemname+"#"+items;
        	}
		invoice = null;
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		aio.setItemName(items);
		aio.setTotalAmount(checkoutcart.getTotalprice().toString());
		aio.setTradeDesc("item desc");
		aio.setReturnURL("http://localhost:8080/testfinalproject/");
		aio.setClientBackURL("http://localhost:8080/testfinalproject/");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(EcpayException e){
			throw new Error(e.getNewExceptionMessage());
		}
		
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutPeriod", method = RequestMethod.GET)
	public ModelAndView aioCheckOutPeriod(){
		return new ModelAndView("aioCheckOutPeriod", "command", new AioCheckOutPeriod());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutPeriod", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutPeriod(AioCheckOutPeriod aio) throws UnsupportedEncodingException{
		all = new AllInOne("");
		System.out.println(aio.getRemark());
		InvoiceObj invoice = new InvoiceObj();
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		//�t�Ӧۦ�]�w�w���w�B�W�h
		aio.setPeriodAmount("50");
		aio.setPeriodType("M");
		aio.setFrequency("1");
		aio.setExecTimes("99");
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(EcpayException e){
			throw new Error(e.getNewExceptionMessage());
		}
		
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutWebATM", method = RequestMethod.GET)
	public ModelAndView aioCheckOutWebATM(){
		return new ModelAndView("aioCheckOutWebATM", "command", new AioCheckOutWebATM());
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutWebATM", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutWebATM(AioCheckOutWebATM aio, @RequestParam(value="ChooseSubPayment")String payment) throws UnsupportedEncodingException{
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�����}�o��
		invoice.setRelateNumber(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 30));
		invoice.setCustomerID("123456");
		invoice.setCarruerType("1");
		invoice.setTaxType("1");
		invoice.setCarruerNum("");
		invoice.setDonation("2");
		invoice.setLoveCode("X123456");
		invoice.setPrint("0");
		//DB�̭����
		invoice.setInvoiceItemName("�q��");
		invoice.setInvoiceItemCount("1");
		invoice.setInvoiceItemWord("�x");
		invoice.setInvoiceItemPrice("50");
		invoice.setInvoiceItemTaxType("1");
		//�Ȥ��J�t�Ωұo����T
		invoice.setCustomerName("Mark");
		invoice.setCustomerAddr("�x�_");
		invoice.setCustomerPhone("0911429215");
		//�t�ΨM�w����Ѽ�
		invoice.setDelayDay("1");
		//�t�γ]�w�r�y���O
		invoice.setInvType("07");
		//�R�[���
		aio.setChooseSubPayment(payment);
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("�q��");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(EcpayException e){
			throw new Error(e.getNewExceptionMessage());
		}
		
	}
}
