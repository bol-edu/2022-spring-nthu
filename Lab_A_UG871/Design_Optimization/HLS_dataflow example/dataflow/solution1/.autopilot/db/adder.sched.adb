<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>adder</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>gmem</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1483757360</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>2</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>in_r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>in</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1953724787</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>out_r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>out</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>2</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>inc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>inc</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1483755632</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>size</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>size</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>302</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>12</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>size_read</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>116</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>116</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>size</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>50</item>
					<item>51</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>inc_read</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>116</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>116</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>inc</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>52</item>
					<item>53</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>out_read</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>116</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>116</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>out</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1869182051</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>55</item>
					<item>56</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>in_read</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>116</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>116</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>in</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1483748768</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>57</item>
					<item>58</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>size_c9</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>116</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>116</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>60</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>inc_c</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>116</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>116</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>3908947774</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>61</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>out_c</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>116</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>116</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>62</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>size_c</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>116</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>116</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>63</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>42</id>
						<name>_ln142</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>142</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>142</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1484769888</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>65</item>
					<item>66</item>
					<item>67</item>
					<item>68</item>
					<item>69</item>
					<item>70</item>
					<item>71</item>
					<item>72</item>
					<item>73</item>
					<item>84</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>7.30</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>45</id>
						<name>_ln143</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>143</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>143</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>2147483647</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>75</item>
					<item>76</item>
					<item>77</item>
					<item>78</item>
					<item>85</item>
					<item>86</item>
					<item>480</item>
					<item>481</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>46</id>
						<name>_ln144</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>144</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>144</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>2147483647</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>80</item>
					<item>81</item>
					<item>82</item>
					<item>83</item>
					<item>87</item>
					<item>479</item>
					<item>482</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>47</id>
						<name>_ln145</name>
						<fileName>aaa.cpp</fileName>
						<fileDirectory>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</fileDirectory>
						<lineNumber>145</lineNumber>
						<contextFuncName>adder</contextFuncName>
						<contextNormFuncName>adder</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\Lab611\Desktop\Portal\yuri-project\2022HLS\LAB_dataflow</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>aaa.cpp</first>
											<second>adder</second>
										</first>
										<second>145</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>757935405</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_18">
				<Value>
					<Obj>
						<type>2</type>
						<id>59</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>2036689696</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_19">
				<Value>
					<Obj>
						<type>2</type>
						<id>64</id>
						<name>read_input3</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>22</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:read_input3&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_20">
				<Value>
					<Obj>
						<type>2</type>
						<id>74</id>
						<name>compute_add</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1953067621</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:compute_add&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_21">
				<Value>
					<Obj>
						<type>2</type>
						<id>79</id>
						<name>write_result</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:write_result&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_22">
				<Obj>
					<type>3</type>
					<id>48</id>
					<name>adder</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<coreId>2057927232</coreId>
				</Obj>
				<node_objs>
					<count>12</count>
					<item_version>0</item_version>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>42</item>
					<item>45</item>
					<item>46</item>
					<item>47</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>33</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_23">
				<id>51</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>53</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>56</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>58</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>60</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>61</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>62</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>63</id>
				<edge_type>1</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>66</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>67</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>68</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>69</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>70</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>71</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>79</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>479</id>
				<edge_type>4</edge_type>
				<source_obj>45</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>480</id>
				<edge_type>4</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>481</id>
				<edge_type>4</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>482</id>
				<edge_type>4</edge_type>
				<source_obj>45</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_56">
			<mId>1</mId>
			<mTag>adder</mTag>
			<mNormTag>adder</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>48</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>4107</mMinLatency>
			<mMaxLatency>4113</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_57">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>5</count>
					<item_version>0</item_version>
					<item class_id="25" tracking_level="1" version="0" object_id="_58">
						<name>gmem</name>
						<dir>2</dir>
						<type>1</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_59">
						<name>in</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_60">
						<name>out</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_61">
						<name>inc</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_62">
						<name>size</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
				</port_list>
				<process_list class_id="27" tracking_level="0" version="0">
					<count>3</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_63">
						<type>0</type>
						<name>read_input3_U0</name>
						<ssdmobj_id>42</ssdmobj_id>
						<pins class_id="29" tracking_level="0" version="0">
							<count>5</count>
							<item_version>0</item_version>
							<item class_id="30" tracking_level="1" version="0" object_id="_64">
								<port class_id_reference="25" object_id="_65">
									<name>gmem</name>
									<dir>0</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_58"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id="31" tracking_level="1" version="0" object_id="_66">
									<type>0</type>
									<name>read_input3_U0</name>
									<ssdmobj_id>42</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_67">
								<port class_id_reference="25" object_id="_68">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_59"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_66"></inst>
							</item>
							<item class_id_reference="30" object_id="_69">
								<port class_id_reference="25" object_id="_70">
									<name>size</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_62"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_66"></inst>
							</item>
							<item class_id_reference="30" object_id="_71">
								<port class_id_reference="25" object_id="_72">
									<name>out</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_60"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_66"></inst>
							</item>
							<item class_id_reference="30" object_id="_73">
								<port class_id_reference="25" object_id="_74">
									<name>inc</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_61"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_66"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_75">
						<type>0</type>
						<name>compute_add_U0</name>
						<ssdmobj_id>45</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_76">
						<type>0</type>
						<name>write_result_U0</name>
						<ssdmobj_id>46</ssdmobj_id>
						<pins>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_77">
								<port class_id_reference="25" object_id="_78">
									<name>gmem</name>
									<dir>1</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_58"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_79">
									<type>0</type>
									<name>write_result_U0</name>
									<ssdmobj_id>46</ssdmobj_id>
								</inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
				</process_list>
				<channel_list class_id="32" tracking_level="0" version="0">
					<count>6</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_80">
						<type>1</type>
						<name>size_c</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_81">
							<port class_id_reference="25" object_id="_82">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_66"></inst>
						</source>
						<sink class_id_reference="30" object_id="_83">
							<port class_id_reference="25" object_id="_84">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_85">
								<type>0</type>
								<name>compute_add_U0</name>
								<ssdmobj_id>45</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_86">
						<type>1</type>
						<name>out_c</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>0</ctype>
						<depth>3</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>3</suggested_depth>
						<source class_id_reference="30" object_id="_87">
							<port class_id_reference="25" object_id="_88">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_66"></inst>
						</source>
						<sink class_id_reference="30" object_id="_89">
							<port class_id_reference="25" object_id="_90">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_79"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_91">
						<type>1</type>
						<name>inc_c</name>
						<ssdmobj_id>14</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_92">
							<port class_id_reference="25" object_id="_93">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_66"></inst>
						</source>
						<sink class_id_reference="30" object_id="_94">
							<port class_id_reference="25" object_id="_95">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_85"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_96">
						<type>1</type>
						<name>inStream</name>
						<ssdmobj_id>7</ssdmobj_id>
						<ctype>0</ctype>
						<depth>32</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>32</suggested_depth>
						<source class_id_reference="30" object_id="_97">
							<port class_id_reference="25" object_id="_98">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_66"></inst>
						</source>
						<sink class_id_reference="30" object_id="_99">
							<port class_id_reference="25" object_id="_100">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_85"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_101">
						<type>1</type>
						<name>size_c9</name>
						<ssdmobj_id>13</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_102">
							<port class_id_reference="25" object_id="_103">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_85"></inst>
						</source>
						<sink class_id_reference="30" object_id="_104">
							<port class_id_reference="25" object_id="_105">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_79"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_106">
						<type>1</type>
						<name>outStream</name>
						<ssdmobj_id>8</ssdmobj_id>
						<ctype>0</ctype>
						<depth>32</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>32</suggested_depth>
						<source class_id_reference="30" object_id="_107">
							<port class_id_reference="25" object_id="_108">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_85"></inst>
						</source>
						<sink class_id_reference="30" object_id="_109">
							<port class_id_reference="25" object_id="_110">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_79"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>12</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>9</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>42</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>45</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>46</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>47</first>
			<second>
				<first>6</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>48</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>6</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_111">
			<region_name>adder</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>48</item>
			</basic_blocks>
			<nodes>
				<count>39</count>
				<item_version>0</item_version>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

