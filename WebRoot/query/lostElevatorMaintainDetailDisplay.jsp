<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic" %>
<link rel="stylesheet" type="text/css" href="<html:rewrite forward='formCSS'/>">
<script language="javascript" src="<html:rewrite forward='pageJS'/>"></script>
<script language="javascript" src="<html:rewrite page="/common/javascript/jquery-1.9.1.min.js"/>"></script>
<br>
<html:errors/>
<html:form action="/lostElevatorMaintainDetailAction.do?method=toDisplayRecord">
<logic:present name="lostElevatorReportBean">
<html:hidden name="lostElevatorReportBean" property="jnlno"/>
<html:hidden name="lostElevatorReportBean" property="billNo"/>
  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
    <tr>
    <td nowrap="nowrap" height="23" colspan="4">&nbsp;<b>���ݱ��������Ϣ</td>
  </tr>
  <tr>
    <td class="wordtd">�����ֲ�:</td>
    <td width=30%" nowrap="nowrap">
    	${lostElevatorReportBean.maintDivision}
    </td>
    <td class="wordtd">����ά��վ:</td>
    <td nowrap="nowrap" width="30%">
    	${lostElevatorReportBean.maintStation}
    </td>
  </tr>
  <tr>    
    <td class="wordtd">ά����ͬ��:</td>
    <td>
    	${lostElevatorReportBean.maintContractNo}
    </td>
    <td nowrap="nowrap" class="wordtd">��Ŀ����:</td>
    <td>
    	${lostElevatorReportBean.projectName}
    </td>   
  </tr>     
  <tr>
    <td nowrap="nowrap" class="wordtd">̨��:</td>
    <td>
    	${lostElevatorReportBean.eleNum}
    </td>   
    <td nowrap="nowrap" class="wordtd">��������:</td>
    <td>
    	${lostElevatorReportBean.lostElevatorDate}
    </td>          
  </tr>
  <tr>      
    <td nowrap="nowrap" class="wordtd">��ͬ���:</td>
    <td>
    	${lostElevatorReportBean.contractNatureOf}
    </td>          
    <td nowrap="nowrap" class="wordtd">ԭ�����:</td>
    <td>
    	${lostElevatorReportBean.causeAnalysis}
    </td>   
  </tr>
  <tr>      
    <td class="wordtd">ʹ�õ�λ��ϵ��:</td>
    <td>
    	${lostElevatorReportBean.contacts}
    </td>          
    <td nowrap="nowrap" class="wordtd">��ϵ�绰:</td>
    <td>
    	${lostElevatorReportBean.contactPhone}
    </td>   
  </tr>
  <tr>      
    <td class="wordtd">��ע��ϸԭ��:</td>
    <td colspan="3">
    	${lostElevatorReportBean.detailedRem}
    </td>          
  </tr>
  <tr>      
    <td nowrap="nowrap" class="wordtd">¼����:</td>
    <td>
    	${lostElevatorReportBean.operId}
    </td>         
    <td nowrap="nowrap" class="wordtd">¼������:</td>
    <td>
    	${lostElevatorReportBean.operDate}
    </td>   
  </tr>
</table>

<br>

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
  <tr>
    <td nowrap="nowrap" height="23" colspan="2">&nbsp;<b>������������Ϣ</b></td>        
  </tr>
  <tr>
    <td width="20%" class="wordtd">������λ����:</td>
    <td nowrap="nowrap" width="75%" class="isred">
    	${lostElevatorReportBean.competeCompany}
    </td> 
  </tr>
  <tr>
    <td nowrap="nowrap" class="wordtd">�ָ��ƻ�:</td>
    <td nowrap="nowrap" class="isred">
    	${lostElevatorReportBean.recoveryPlan}
    </td>                  
  </tr>
  </table>
  <script language="javascript">
  	/* function isRed2(cause,company,plan){
  		if(cause!="�ͻ�����ά��" && cause!="����ͣ��" && cause!="��������" && company=="" && plan==""){
  			$(".isred").css("background-color","red");
  		}
  	}
  	$(document).ready(function() {
  		isRed2('${lostElevatorReportBean.causeAnalysis}','${lostElevatorReportBean.competeCompany}','${lostElevatorReportBean.recoveryPlan}')
	}) */
  </script>
</logic:present>

</html:form>