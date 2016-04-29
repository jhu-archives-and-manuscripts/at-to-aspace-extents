<?xml version="1.1" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    
    <!-- LJD20160329: This stylesheet starts with the XML file located at "G:\archives-and-manuscripts\aspace\concatenateColls.xml" and generates a 
        final XML file located at "G:\archives-and-manuscripts\aspace\extentsStatement.xml".  The extentsStatement XML includes a human-readable extents statement
        for each collection, in the following form:
        
        Collection Number
            ExtentsStatement (# Box Type, # Box Type, # custom box type (dimensions))
                 
        The resulting XML file is located at: "G:\archives-and-manuscripts\aspace\extentsStatementAcc.xml".-->
    
    <xsl:strip-space elements="*"/>
    <xsl:output method="xml" version="1.1" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:result-document href="file:/G:/archives-and-manuscripts/aspace/extentsStatementAcc.xml">
            <collections>
            <xsl:for-each-group select="/collections/Query2" group-by="Call_No">
                <collection>
                    <collectionNumber>
                        <xsl:value-of select="Call_No"/>
                    </collectionNumber>
                    
                    <extentsStatement>
                        <!--RCCs-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='RC']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='RC']), ' Record Center Cartons, ')"/>
                        </xsl:if>
                        
                        <!--Letter Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='LtFull']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='LtFull']), ' Full Letter Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='LtHalf']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='LtHalf']), ' Half Letter Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Legal Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='LgFull']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='LgFull']), ' Full Legal Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='LgHalf']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='LgHalf']), ' Half Legal Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Flat Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat01']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat01']), ' Flat 01 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat02']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat02']), ' Flat 02 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat03']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat03']), ' Flat 03 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat04']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat04']), ' Flat 04 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat05']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat05']), ' Flat 05 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat06']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat06']), ' Flat 06 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat07']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat07']), ' Flat 07 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat08']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat08']), ' Flat 08 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat09']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat09']), ' Flat 09 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat10']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat10']), ' Flat 10 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat11']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat11']), ' Flat 11 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat12']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat12']), ' Flat 12 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat13']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat13']), ' Flat 13 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat14']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat14']), ' Flat 14 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat15']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat15']), ' Flat 15 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat16']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat16']), ' Flat 16 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat17']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat17']), ' Flat 17 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat18']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat18']), ' Flat 18 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Flat19']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Flat19']), ' Flat 19 Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Document Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Docu1']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Docu1']), ' Document 01 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Docu2']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Docu2']), ' Document 02 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Docu3']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Docu3']), ' Document 03 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Docu4']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Docu4']), ' Document 04 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Docu5']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Docu5']), ' Document 05 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Docu6']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Docu6']), ' Document 06 Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Shoeboxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Shoebox1']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Shoebox1']), ' Shoebox 01 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Shoebox2']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Shoebox2']), ' Shoebox 02 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Shoebox3']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Shoebox3']), ' Shoebox 03 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Shoebox4']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Shoebox4']), ' Shoebox 04 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Shoebox5']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Shoebox5']), ' Shoebox 05 Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Canister Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Canister1']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Canister1']), ' Canister 01 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Canister2']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Canister2']), ' Canister 02 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Canister3']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Canister3']), ' Canister 03 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Canister4']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Canister4']), ' Canister 04 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Canister5']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Canister5']), ' Canister 05 Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Bully Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Bully1']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Bully1']), ' Bully 01 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Bully2']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Bully2']), ' Bully 02 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Bully3']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Bully3']), ' Bully 03 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Bully4']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Bully4']), ' Bully 04 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Bully5']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Bully5']), ' Bully 05 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Bully6']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Bully6']), ' Bully 06 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Bully7']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Bully7']), ' Bully 07 Boxes, ')"/>
                        </xsl:if>
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Bully8']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Bully8']), ' Bully 08 Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Box1 Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Box1']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Box1']), ' Box1 Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Book Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Book']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Book']), ' Book Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Fliptop Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Fliptop1']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Fliptop1']), ' Fliptop Boxes, ')"/>
                        </xsl:if>
                        
                        <!--Levy Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='Levy']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='Levy']), ' Levy Boxes, ')"/>
                        </xsl:if>
                        
                        <!--RPFlat Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='RPFlat']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='RPFlat']), ' RP Flat Boxes, ')"/>
                        </xsl:if>
                        
                        <!--RPLong Boxes-->
                        <xsl:if test="count(Extents/Extent/BoxType[text()='RP Long']) &gt; 0">
                            <xsl:value-of select="concat(count(Extents/Extent/BoxType[text()='RP Long']), ' RP Long Boxes, ')"/>
                        </xsl:if>
                            
                        <!--Special Boxes-->
                        <xsl:for-each select="Extents/Extent/BoxType[text()='Special']">
                            <xsl:value-of select="concat('1 Custom Box ', ../Dimensions)"/>
                            <xsl:if test="position() != last()">
                                <xsl:text>, </xsl:text>
                            </xsl:if>
                        </xsl:for-each>                       
                    </extentsStatement>
                    <extentsNumerical>
                        <xsl:value-of select="format-number(sum(Extents/Extent/CubicFootage[number(.)=number(.)]), '0.##')"/>
                    </extentsNumerical>
                </collection>
            </xsl:for-each-group>
            </collections>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>
