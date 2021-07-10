<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<p:updateStock_batch_req xmlns:p="http://ws.wso2.org/dataservice">
		<xsl:for-each select="//Mutation">
         	<updateStock>
         		<productId >
         			<xsl:value-of select="ProductID" />
         		</productId>      
         		 <mutation>
         			<xsl:value-of select="Stock/Change" />       
         		 </mutation>
         		 <location>
         			<xsl:value-of select="Stock/Location" />       
         		 </location>
      		</updateStock>
      		</xsl:for-each>		
  		</p:updateStock_batch_req>
	</xsl:template>
</xsl:stylesheet>