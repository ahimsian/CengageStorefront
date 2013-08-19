<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- JS configuration --%>
<script type="text/javascript">
	/*<![CDATA[*/
	<%-- Define a javascript variable to hold the content path --%>
	var ACCMOB = { config: {} };
	ACCMOB.config.contextPath = "${contextPath}";
	ACCMOB.config.commonResourcePath = "${commonResourcePath}";
	ACCMOB.config.themeResourcePath = "${themeResourcePath}";
	ACCMOB.config.siteResourcePath = "${siteResourcePath}";
	ACCMOB.config.rootPath = "${siteRootUrl}";
	
	<c:forEach var="jsVar" items="${jsVariables}">
		<c:if test="${not empty jsVar.qualifier}" >
			ACCMOB.${jsVar.qualifier} = '${jsVar.value}';
		</c:if>
	</c:forEach>
	/*]]>*/
</script>