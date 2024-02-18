<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2011r2sp1

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns0="urn:Declaration:datamodel:standard:CN:MT8202:1" exclude-result-prefixes="xs ns0">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<Manifest>
			<xsl:for-each select="ns0:Manifest">
				<xsl:variable name="var1_Declaration" select="ns0:Declaration"/>
				<xsl:variable name="var2_Head" select="ns0:Head"/>
				<xsl:variable name="var3_resultof_cast" select="string($var2_Head/ns0:MessageType)"/>
				<xsl:variable name="var4_resultof_equal" select="($var3_resultof_cast = 'MT1101')"/>
				<xsl:variable name="var5_resultof_substring" select="substring($var3_resultof_cast, number('4'), number('1'))"/>
				<xsl:variable name="var6_JourneyID" select="$var1_Declaration/ns0:BorderTransportMeans/ns0:JourneyID"/>
				<xsl:variable name="var7_resultof_cast" select="string($var2_Head/ns0:MessageID)"/>
				<xsl:variable name="var8_resultof_cast" select="string($var2_Head/ns0:ReceiverID)"/>
				<xsl:variable name="var9_resultof_cast" select="string($var2_Head/ns0:SenderID)"/>
				<xsl:variable name="var10_resultof_cast" select="string($var6_JourneyID)"/>
				<xsl:variable name="var11_val">
					<xsl:choose>
						<xsl:when test="string(($var5_resultof_substring = '1')) != 'false'">
							<xsl:value-of select="'2'"/>
						</xsl:when>
						<xsl:when test="string(($var5_resultof_substring = '2')) != 'false'">
							<xsl:value-of select="'5'"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="'2'"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<msg_info>
					<msg_id>
						<xsl:value-of select="$var7_resultof_cast"/>
					</msg_id>
					<function_code>
						<xsl:value-of select="string($var2_Head/ns0:FunctionCode)"/>
					</function_code>
					<msg_type>
						<xsl:value-of select="substring-after($var3_resultof_cast, 'MT')"/>
					</msg_type>
					<sender_id>
						<xsl:value-of select="$var9_resultof_cast"/>
					</sender_id>
					<receiver_id>
						<xsl:value-of select="$var8_resultof_cast"/>
					</receiver_id>
					<send_time>
						<xsl:value-of select="string($var2_Head/ns0:SendTime)"/>
					</send_time>
					<version>
						<xsl:value-of select="string($var2_Head/ns0:Version)"/>
					</version>
				</msg_info>
				<content>
					<transport>
						<manifest_id>
							<xsl:choose>
								<xsl:when test="string((string($var11_val) = '2')) != 'false'">
									<xsl:value-of select="concat(concat($var10_resultof_cast, '_'), $var10_resultof_cast)"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="string($var6_JourneyID)"/>
								</xsl:otherwise>
							</xsl:choose>
						</manifest_id>
						<message_id>
							<xsl:value-of select="$var7_resultof_cast"/>
						</message_id>
						<decl_traf_mode>
							<xsl:value-of select="string($var11_val)"/>
						</decl_traf_mode>
						<xsl:if test="string(((string($var4_resultof_equal) != 'false') or (($var3_resultof_cast = 'MT1201') or (($var3_resultof_cast = 'MT2101') or (($var3_resultof_cast = 'MT2201') or (($var3_resultof_cast = 'MT3101') or (($var3_resultof_cast = 'MT3102') or (($var3_resultof_cast = 'MT3201') or (($var3_resultof_cast = 'MT3202') or (($var3_resultof_cast = 'MT4101') or (($var3_resultof_cast = 'MT4201') or (($var3_resultof_cast = 'MT5101') or (($var3_resultof_cast = 'MT5102') or (($var3_resultof_cast = 'MT5201') or (($var3_resultof_cast = 'MT5202') or (($var3_resultof_cast = 'MT6101') or (($var3_resultof_cast = 'MT6102') or (($var3_resultof_cast = 'MT6201') or (($var3_resultof_cast = 'MT6202') or (($var3_resultof_cast = 'MT7101') or (($var3_resultof_cast = 'MT8101') or (($var3_resultof_cast = 'MT8102') or (($var3_resultof_cast = 'MT8103') or (($var3_resultof_cast = 'MT8104') or (($var3_resultof_cast = 'MT8201') or (($var3_resultof_cast = 'MT8202') or (($var3_resultof_cast = 'MT8203') or (($var3_resultof_cast = 'MT8204') or (($var3_resultof_cast = 'MTECEX') or ($var3_resultof_cast = 'MTECIM')))))))))))))))))))))))))))))) != 'false'">
							<i_e_flag>
								<xsl:choose>
									<xsl:when test="string((string($var4_resultof_equal) != 'false')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT1201')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT2101')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT2201')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT3101')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT3102')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT3201')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT3202')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT4101')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT4201')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT5101')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT5102')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT5201')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT5202')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT6101')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT6102')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT6201')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT6202')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT7101')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT8101')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT8102')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT8103')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT8104')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT8201')) != 'false'">
										<xsl:value-of select="'I'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT8202')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT8203')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MT8204')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:when test="string(($var3_resultof_cast = 'MTECEX')) != 'false'">
										<xsl:value-of select="'E'"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:if test="string(($var3_resultof_cast = 'MTECIM')) != 'false'">
											<xsl:value-of select="'I'"/>
										</xsl:if>
									</xsl:otherwise>
								</xsl:choose>
							</i_e_flag>
						</xsl:if>
						<voyage_no>
							<xsl:value-of select="$var10_resultof_cast"/>
						</voyage_no>
						<xsl:for-each select="$var1_Declaration/ns0:AdditionalInformation">
							<remark>
								<xsl:value-of select="string(ns0:Content)"/>
							</remark>
						</xsl:for-each>
					</transport>
					<bills>
						<xsl:for-each select="$var1_Declaration/ns0:Consignment">
							<xsl:variable name="var12_AssociatedTransportDocument" select="ns0:AssociatedTransportDocument"/>
							<xsl:variable name="var13_resultof_exists" select="boolean($var12_AssociatedTransportDocument)"/>
							<bill>
								<manifest_id>
									<xsl:choose>
										<xsl:when test="string((string($var11_val) = '2')) != 'false'">
											<xsl:value-of select="concat(concat($var10_resultof_cast, '_'), $var10_resultof_cast)"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="string($var6_JourneyID)"/>
										</xsl:otherwise>
									</xsl:choose>
								</manifest_id>
								<message_id>
									<xsl:value-of select="$var7_resultof_cast"/>
								</message_id>
								<receiver_code>
									<xsl:value-of select="$var8_resultof_cast"/>
								</receiver_code>
								<sender_code>
									<xsl:value-of select="$var9_resultof_cast"/>
								</sender_code>
								<bill_no>
									<xsl:choose>
										<xsl:when test="string((string($var13_resultof_exists) != 'false')) != 'false'">
											<xsl:for-each select="$var12_AssociatedTransportDocument">
												<xsl:value-of select="string(ns0:ID)"/>
											</xsl:for-each>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="string(ns0:TransportContractDocument/ns0:ID)"/>
										</xsl:otherwise>
									</xsl:choose>
								</bill_no>
								<bill_type>
									<xsl:choose>
										<xsl:when test="string((string($var13_resultof_exists) != 'false')) != 'false'">
											<xsl:value-of select="'1'"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="'0'"/>
										</xsl:otherwise>
									</xsl:choose>
								</bill_type>
								<xsl:if test="string((string($var13_resultof_exists) != 'false')) != 'false'">
									<parent_bill_no>
										<xsl:value-of select="string(ns0:TransportContractDocument/ns0:ID)"/>
									</parent_bill_no>
								</xsl:if>
								<decl_traf_mode>
									<xsl:value-of select="string($var11_val)"/>
								</decl_traf_mode>
								<xsl:if test="string(((string($var4_resultof_equal) != 'false') or (($var3_resultof_cast = 'MT1201') or (($var3_resultof_cast = 'MT2101') or (($var3_resultof_cast = 'MT2201') or (($var3_resultof_cast = 'MT3101') or (($var3_resultof_cast = 'MT3102') or (($var3_resultof_cast = 'MT3201') or (($var3_resultof_cast = 'MT3202') or (($var3_resultof_cast = 'MT4101') or (($var3_resultof_cast = 'MT4201') or (($var3_resultof_cast = 'MT5101') or (($var3_resultof_cast = 'MT5102') or (($var3_resultof_cast = 'MT5201') or (($var3_resultof_cast = 'MT5202') or (($var3_resultof_cast = 'MT6101') or (($var3_resultof_cast = 'MT6102') or (($var3_resultof_cast = 'MT6201') or (($var3_resultof_cast = 'MT6202') or (($var3_resultof_cast = 'MT7101') or (($var3_resultof_cast = 'MT8101') or (($var3_resultof_cast = 'MT8102') or (($var3_resultof_cast = 'MT8103') or (($var3_resultof_cast = 'MT8104') or (($var3_resultof_cast = 'MT8201') or (($var3_resultof_cast = 'MT8202') or (($var3_resultof_cast = 'MT8203') or (($var3_resultof_cast = 'MT8204') or (($var3_resultof_cast = 'MTECEX') or ($var3_resultof_cast = 'MTECIM')))))))))))))))))))))))))))))) != 'false'">
									<i_e_flag>
										<xsl:choose>
											<xsl:when test="string((string($var4_resultof_equal) != 'false')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT1201')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT2101')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT2201')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT3101')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT3102')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT3201')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT3202')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT4101')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT4201')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT5101')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT5102')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT5201')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT5202')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT6101')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT6102')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT6201')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT6202')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT7101')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT8101')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT8102')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT8103')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT8104')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT8201')) != 'false'">
												<xsl:value-of select="'I'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT8202')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT8203')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MT8204')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:when test="string(($var3_resultof_cast = 'MTECEX')) != 'false'">
												<xsl:value-of select="'E'"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:if test="string(($var3_resultof_cast = 'MTECIM')) != 'false'">
													<xsl:value-of select="'I'"/>
												</xsl:if>
											</xsl:otherwise>
										</xsl:choose>
									</i_e_flag>
								</xsl:if>
							</bill>
						</xsl:for-each>
					</bills>
					<xsl:for-each select="$var1_Declaration/ns0:AdditionalInformation">
						<ChangeReasons>
							<ChangeReason>
								<MSG_ID>
									<xsl:value-of select="$var7_resultof_cast"/>
								</MSG_ID>
								<MANIFEST_ID>
									<xsl:choose>
										<xsl:when test="string((string($var11_val) = '2')) != 'false'">
											<xsl:value-of select="concat(concat($var10_resultof_cast, '_'), $var10_resultof_cast)"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="string($var6_JourneyID)"/>
										</xsl:otherwise>
									</xsl:choose>
								</MANIFEST_ID>
								<TRANSPORT_ID>
							</TRANSPORT_ID>
								<VOYAGE_NO>
									<xsl:value-of select="$var10_resultof_cast"/>
								</VOYAGE_NO>
								<xsl:for-each select="$var1_Declaration/ns0:AdditionalInformation/ns0:Reason">
									<CHANGE_REASON>
										<xsl:value-of select="string(.)"/>
									</CHANGE_REASON>
								</xsl:for-each>
								<xsl:for-each select="$var1_Declaration/ns0:AdditionalInformation/ns0:ContactName">
									<CHANGE_PERSON>
										<xsl:value-of select="string(.)"/>
									</CHANGE_PERSON>
								</xsl:for-each>
								<xsl:for-each select="$var1_Declaration/ns0:AdditionalInformation/ns0:ContactTel">
									<CHANGE_TEL>
										<xsl:value-of select="string(.)"/>
									</CHANGE_TEL>
								</xsl:for-each>
							</ChangeReason>
						</ChangeReasons>
					</xsl:for-each>
				</content>
			</xsl:for-each>
		</Manifest>
	</xsl:template>
</xsl:stylesheet>
