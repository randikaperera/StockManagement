<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<p:setStock_batch_req xmlns:p="http://ws.wso2.org/dataservice">
		<xsl:for-each select="//Product">
         	<setStock>
         		<productId >
         			<xsl:value-of select="ProductID" />
         		</productId>
         		<productName>
         			<xsl:value-of select="Name" />      
        		 </productName>       
         		 <quantity>
         			<xsl:value-of select="Stock/Amount" />       
         		 </quantity>
         		 <location>
         			<xsl:value-of select="Stock/Location" />       
         		 </location>
      		</setStock>
      		</xsl:for-each>		
  		</p:setStock_batch_req>
	</xsl:template>
</xsl:stylesheet>