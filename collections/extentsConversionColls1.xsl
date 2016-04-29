<?xml version="1.1" encoding="UTF-8"?>
 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    
    <!-- LJD20160323: This stylesheet is used to generate a simple XML file concatinating by collection and listing basic extents information from 
        the "XML Experiment" document provided by Valerie and located at: "G:\archives-and-manuscripts\aspace\XML Experiment.xml". 
        
        Information listed includes:
            Box Type (TextString)
            Dimensions (# x # x #)
            Cubic Footage (Truncated to two decimal places)
    
        The resulting XML file is located at: "G:\archives-and-manuscripts\aspace\concatenateColls.xml".-->
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="xml" version="1.1" encoding="UTF-8" indent="yes"/>
     
     <xsl:template match="/">
         <xsl:result-document href="file:/G:/archives-and-manuscripts/aspace/concatenateColls.xml">
             <collections>
         <xsl:for-each-group select="dataroot/Query1" group-by="Call_No">
             <Query1>
                 <Call_No>
                     <xsl:value-of select="Call_No"/>
                 </Call_No>
                 <Extents>
                    <xsl:for-each select="current-group()">
                        <Extent>
                            <BoxType>
                                <xsl:value-of select="Box_Type"/>
                            </BoxType>
                            <Dimensions>
                                <xsl:text>(</xsl:text><xsl:value-of select="D"/><xsl:text> x </xsl:text><xsl:value-of select="W"/><xsl:text> x </xsl:text><xsl:value-of select="H"/><xsl:text>)</xsl:text>
                            </Dimensions>
                            <CubicFootage>
                                <xsl:value-of select="format-number(Cubic_Feet, '0.##')" />
                            </CubicFootage>
                        </Extent>
                    </xsl:for-each>
                 </Extents>
             </Query1>
         </xsl:for-each-group>
             </collections>
         </xsl:result-document>
     </xsl:template>
 
 </xsl:stylesheet>
