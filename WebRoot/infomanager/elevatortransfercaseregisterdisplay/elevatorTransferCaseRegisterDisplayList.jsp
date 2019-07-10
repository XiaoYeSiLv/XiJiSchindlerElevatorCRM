<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/html-table.tld" prefix="table"%>
<link rel="stylesheet" type="text/css" href="<html:rewrite forward='formCSS'/>">
<script language="javascript" defer="defer" src="<html:rewrite forward='DatePickerJS'/>"></script>
<html:errors />
<br>
<html:form action="/ServeTable.do">
    <table border="0">
    <tr>
      <td>
      &nbsp;&nbsp;
        流水号
        :
      </td>
      <td>
        <html:text property="property(billno)" styleClass="default_input" />
      </td>
       <td> 
      &nbsp;&nbsp;    
        销售合同号
        :
      </td>
      <td>
        <html:text property="property(salesContractNo)" styleClass="default_input"/>
      </td> 
    <td>       
     &nbsp;&nbsp;
     电梯编号
        :
      </td>
      <td>
         <html:text property="property(elevatorNo)" styleClass="default_input"/>
      </td>
      <td>      
      &nbsp;&nbsp;
        厂检人员名称
        :
      </td>
      <td>
        <html:text property="property(staffName)" styleClass="default_input" />
      </td>
    </tr>
    <tr>          
      <td> 
        &nbsp;&nbsp;      
        所属部门
        :
      </td>
      <td>
        <html:select property="property(department)">
		  <html:options collection="departmentList" property="comid" labelProperty="comfullname"/>
        </html:select>
      </td>    
      <td>
        &nbsp;&nbsp;               
        项目名称
        :
      </td>
      <td colspan="3">
        <html:text property="property(projectName)" styleClass="default_input" size="56" />
      </td>
      <td>&nbsp;&nbsp;
       	厂检结果:</td>
        <td>
        	<html:select property="property(factoryCheckResult)">
        		<html:option value="">全部</html:option>
        		<html:option value="合格">合格</html:option>
        		<html:option value="不合格">不合格</html:option>
        	</html:select>
        </td>
      
    </tr>
    <tr>
      <td>
      &nbsp;&nbsp;  
                    处理状态
        :
      </td>
      <td>
        <html:select property="property(processStatus)">
          <html:option value="">全部</html:option>
          <logic:equal name="isshowrole" value="Y">
			  <html:option value="0">未接收</html:option>
			  <html:option value="4">已接收</html:option>
			  <html:option value="1">已登记未提交</html:option>
			  <html:option value="2">已登记已提交</html:option>
			  <html:option value="3">已审核</html:option>
		  </logic:equal>
		  <logic:notEqual name="isshowrole" value="Y">
			  <html:option value="2">已登记已提交</html:option>
			  <html:option value="3">已审核</html:option>
		  </logic:notEqual>
        </html:select>
      </td>  
    <td>
     &nbsp;&nbsp;
     安装公司名称
        :
      </td>
      <td colspan="3">
         <html:text property="property(insCompanyName)" styleClass="default_input" size="56" />
      </td>
         
      <td>
        &nbsp;&nbsp;               
        项目经理
        :
      </td>
      <td>
        <html:text property="property(projectManager)" styleClass="default_input"/>
      </td>
    </tr>
    <tr>                    
      <td>                 
     	  &nbsp;&nbsp;
     	  是否关闭厂检:
      </td>
      <td>
        <html:select property="property(isClose)">
          	<html:option value="">全部</html:option>
	       	<html:option value="Y">是</html:option>
	       	<html:option value="N">否</html:option>
        </html:select>
      </td>  
	    <td>&nbsp;&nbsp;
	    厂检时间
	    :</td>
	    <td colspan="3">
	    <html:text property="property(sdate1)" styleId="sdate1" styleClass="Wdate" size="16" onfocus="WdatePicker({readOnly:true,isShowClear:true});"/>
		- 
		<html:text property="property(edate1)" styleId="edate1" styleClass="Wdate" size="16" onfocus="WdatePicker({readOnly:true,isShowClear:true})"/>
	    </td>
      <td>
        &nbsp;&nbsp;               
        	项目省份
        :
      </td>
      <td>
        <html:text property="property(projectProvince)" styleClass="default_input"/>
      </td>
    </tr>
      <html:hidden property="property(genReport)" styleId="genReport" />
  </table>   
	<br>
    <table:table id="guiElevatorTransferCaseRegisterDisplay" name="elevatorTransferCaseRegisterDisplayList">
    <logic:iterate id="element" name="elevatorTransferCaseRegisterDisplayList">
      <table:define id="c_cb">
        <bean:define id="billno" name="element" property="billno" />
        <html:radio property="checkBoxList(ids)" styleId="ids" value="${billno}" />
        <html:hidden name="element" property="submitType" />
        <html:hidden name="element" property="isClose" />
        <html:hidden name="element" property="checkVersion" />
        <html:hidden name="element" property="r1" />
      </table:define>
      <table:define id="c_billno">
        <a href="<html:rewrite page='/elevatorTransferCaseRegisterDisplayAction.do'/>?method=toDisplayRecord&id=<bean:write name="element"  property="billno"/>">
          <bean:write name="element" property="billno" />
        </a>
      </table:define>
      <table:define id="c_checkTime">
        <bean:write name="element" property="checkTime" />
      </table:define>
      <table:define id="c_checkNum">
        <bean:write name="element" property="checkNum" />
      </table:define>
      <table:define id="c_projectName">
        <bean:write name="element" property="projectName" />
      </table:define>
      <table:define id="c_insCompanyName">
        <bean:write name="element" property="insCompanyName" />
      </table:define>
      <table:define id="c_salesContractNo">
        <bean:write name="element" property="salesContractNo" />
      </table:define>
       <table:define id="c_elevatorNo">
        <bean:write name="element" property="elevatorNo" />
      </table:define>   
      <table:define id="c_staffName">
        <bean:write name="element" property="staffName" />
      </table:define>
      <table:define id="c_department">
        <bean:write name="element" property="department" />
      </table:define>
      <table:define id="c_factoryCheckResult">
        <bean:write name="element" property="factoryCheckResult" />
        <html:hidden name="element" property="factoryCheckResult"/>
      </table:define>
      <table:define id="c_projectManager">
        <bean:write name="element" property="projectManager" />    
        <html:hidden name="element" property="projectManager"/>
      </table:define> 
      <table:define id="c_status">
        <bean:write name="element" property="r2" />    
        <html:hidden name="element" property="status"/>
      </table:define>   
      <table:define id="c_processName">
        <bean:write name="element" property="processName" />    
      </table:define>     
      <table:define id="c_submitType">
        <logic:match name="element" property="submitType" value="Y">已提交</logic:match>
        <logic:match name="element" property="submitType" value="N">未提交</logic:match>
        <logic:match name="element" property="submitType" value="R">驳回</logic:match>
        <logic:match name="element" property="submitType" value="Z">转派</logic:match>
      </table:define>
      <table:define id="c_processStatus">
        <html:hidden name="element" property="processStatus"/>
        <logic:match name="element" property="processStatus" value="0">未接收</logic:match>
        <logic:match name="element" property="processStatus" value="4">已接收</logic:match>
        <logic:match name="element" property="processStatus" value="1">已登记未提交</logic:match>
        <logic:match name="element" property="processStatus" value="2">已登记已提交</logic:match>
        <logic:match name="element" property="processStatus" value="3">已审核</logic:match>
      </table:define>   
      <table:define id="c_isClose">
        <logic:equal name="element" property="isClose" value="Y">是</logic:equal>
        <logic:notEqual name="element" property="isClose" value="Y">否</logic:notEqual>
      </table:define>
      <table:tr />
    </logic:iterate>
  </table:table>
</html:form>