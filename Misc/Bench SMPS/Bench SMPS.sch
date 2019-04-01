<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="RobThePyro">
<packages>
<package name="KIS-3R33S">
<wire x1="-10.95" y1="10.45" x2="10.95" y2="10.45" width="0.127" layer="21"/>
<wire x1="-10.95" y1="10.45" x2="-10.95" y2="-10.45" width="0.127" layer="21"/>
<wire x1="-10.95" y1="-10.45" x2="10.95" y2="-10.45" width="0.127" layer="21"/>
<wire x1="10.95" y1="-10.45" x2="10.95" y2="10.45" width="0.127" layer="21"/>
<smd name="ADJ" x="10.2" y="7.95" dx="4.5" dy="1.2" layer="1"/>
<smd name="ON/OFF" x="-10.2" y="7.95" dx="4.5" dy="1.2" layer="1"/>
<smd name="GND" x="-10.2" y="-7.95" dx="4.5" dy="1.2" layer="1"/>
<smd name="GND1" x="10.2" y="-7.95" dx="4.5" dy="1.2" layer="1"/>
<smd name="VIN" x="-10.2" y="-1.95" dx="4.5" dy="1.2" layer="1"/>
<smd name="VOUT" x="10.2" y="1.95" dx="4.5" dy="1.2" layer="1"/>
<smd name="VOUT1" x="10.2" y="0.45" dx="4.5" dy="1.2" layer="1"/>
<text x="-6.35" y="7.62" size="1.27" layer="21">&gt;NAME</text>
<text x="-6.35" y="3.81" size="1.27" layer="21">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MP2307-KIS-3R33S">
<wire x1="-10.16" y1="10.16" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<pin name="VIN" x="-15.24" y="8.255" length="middle"/>
<pin name="VOUT" x="15.24" y="8.255" length="middle" rot="R180"/>
<pin name="GND1" x="-1.27" y="-15.24" length="middle" rot="R90"/>
<pin name="GND" x="1.905" y="-15.24" length="middle" rot="R90"/>
<pin name="ADJ" x="15.24" y="-8.255" length="middle" rot="R180"/>
<pin name="ON/OFF" x="-15.24" y="0" length="middle"/>
<pin name="VOUT1" x="15.24" y="5.715" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="KIS-3R33S">
<gates>
<gate name="G$1" symbol="MP2307-KIS-3R33S" x="0" y="0"/>
</gates>
<devices>
<device name="" package="KIS-3R33S">
<connects>
<connect gate="G$1" pin="ADJ" pad="ADJ"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="ON/OFF" pad="ON/OFF"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="VOUT" pad="VOUT"/>
<connect gate="G$1" pin="VOUT1" pad="VOUT1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="linear">
<description>&lt;b&gt;Linear Devices&lt;/b&gt;&lt;p&gt;
Operational amplifiers,  comparators, voltage regulators, ADCs, DACs, etc.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="OPAMP-OFF+V">
<wire x1="-3.81" y1="3.175" x2="-3.81" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="3.8862" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.3462" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-1.3462" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<text x="5.08" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="0.508" y="5.08" size="0.8128" layer="93" rot="R270">Off</text>
<text x="1.27" y="-5.08" size="0.8128" layer="93" rot="R90">Off</text>
<text x="-1.27" y="4.445" size="0.8128" layer="93" rot="R90">V+</text>
<pin name="-IN" x="-7.62" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="+IN" x="-7.62" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="NULL2" x="2.54" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="OUT" x="7.62" y="0" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="NULL1" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="V+" x="-2.54" y="7.62" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
<symbol name="-V1">
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<text x="1.27" y="-1.905" size="0.8128" layer="93" rot="R90">V-</text>
<pin name="V-" x="0" y="-2.54" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM747*" prefix="IC">
<description>&lt;b&gt;Dual Operational Amplifier&lt;/b&gt;&lt;p&gt;
Source: http://cache.national.com/ds/LM/LM747.pdf</description>
<gates>
<gate name="A" symbol="OPAMP-OFF+V" x="0" y="12.7"/>
<gate name="B" symbol="OPAMP-OFF+V" x="0" y="-15.24"/>
<gate name="P" symbol="-V1" x="-2.54" y="7.62" addlevel="always"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="+IN" pad="2"/>
<connect gate="A" pin="-IN" pad="1"/>
<connect gate="A" pin="NULL1" pad="3"/>
<connect gate="A" pin="NULL2" pad="14"/>
<connect gate="A" pin="OUT" pad="12"/>
<connect gate="A" pin="V+" pad="13"/>
<connect gate="B" pin="+IN" pad="6"/>
<connect gate="B" pin="-IN" pad="7"/>
<connect gate="B" pin="NULL1" pad="5"/>
<connect gate="B" pin="NULL2" pad="8"/>
<connect gate="B" pin="OUT" pad="10"/>
<connect gate="B" pin="V+" pad="9"/>
<connect gate="P" pin="V-" pad="4"/>
</connects>
<technologies>
<technology name=""/>
<technology name="A"/>
<technology name="C"/>
<technology name="E"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="RobThePyro" deviceset="KIS-3R33S" device=""/>
<part name="IC1" library="linear" deviceset="LM747*" device="N" technology="A"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="0" y="63.5"/>
<instance part="IC1" gate="A" x="76.2" y="76.2"/>
<instance part="IC1" gate="P" x="73.66" y="71.12"/>
<instance part="IC1" gate="B" x="76.2" y="53.34"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
