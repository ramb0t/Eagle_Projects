<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="mm" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<package name="FGPMMOPA6H_FOOTPRINT">
<wire x1="8" y1="8" x2="8" y2="-8" width="0.4064" layer="21"/>
<wire x1="8" y1="-8" x2="-8" y2="-8" width="0.4064" layer="21"/>
<wire x1="-8" y1="-8" x2="-8" y2="8" width="0.4064" layer="21"/>
<wire x1="-8" y1="8" x2="8" y2="8" width="0.4064" layer="21"/>
<smd name="PIN1" x="-8" y="6.75" dx="2" dy="1" layer="1"/>
<smd name="PIN2" x="-8" y="5.25" dx="2" dy="1" layer="1"/>
<smd name="PIN3" x="-8" y="3.75" dx="2" dy="1" layer="1"/>
<smd name="PIN4" x="-8" y="2.25" dx="2" dy="1" layer="1"/>
<smd name="PIN5" x="-8" y="0.75" dx="2" dy="1" layer="1"/>
<smd name="PIN6" x="-8" y="-0.75" dx="2" dy="1" layer="1"/>
<smd name="PIN15" x="8" y="-0.75" dx="2" dy="1" layer="1"/>
<smd name="PIN17" x="8" y="2.25" dx="2" dy="1" layer="1"/>
<smd name="PIN16" x="8" y="0.75" dx="2" dy="1" layer="1"/>
<smd name="PIN14" x="8" y="-2.25" dx="2" dy="1" layer="1"/>
<smd name="PIN7" x="-8" y="-2.25" dx="2" dy="1" layer="1"/>
<smd name="PIN8" x="-8" y="-3.75" dx="2" dy="1" layer="1"/>
<smd name="PIN13" x="8" y="-3.75" dx="2" dy="1" layer="1"/>
<smd name="PIN18" x="8" y="3.75" dx="2" dy="1" layer="1"/>
<smd name="PIN9" x="-8" y="-5.25" dx="2" dy="1" layer="1"/>
<smd name="PIN12" x="8" y="-5.25" dx="2" dy="1" layer="1"/>
<smd name="PIN19" x="8" y="5.25" dx="2" dy="1" layer="1"/>
<smd name="PIN10" x="-8" y="-6.75" dx="2" dy="1" layer="1"/>
<smd name="PIN11" x="8" y="-6.75" dx="2" dy="1" layer="1"/>
<smd name="PIN20" x="8" y="6.75" dx="2" dy="1" layer="1"/>
<text x="-6.35" y="6.35" size="0.8128" layer="25">1</text>
<text x="-6.477" y="-7.239" size="0.8128" layer="25">10</text>
<text x="5.461" y="-7.112" size="0.8128" layer="25">11</text>
<text x="5.461" y="6.35" size="0.8128" layer="25">20</text>
<text x="-4.953" y="6.477" size="0.8128" layer="25">&gt;NAME</text>
<text x="-4.699" y="-7.239" size="0.8128" layer="25">&gt;VALUE</text>
<circle x="0.2" y="0.8" radius="1.2" width="0.1" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="FGPMMOPA6H">
<wire x1="-20.32" y1="12.7" x2="20.32" y2="12.7" width="0.254" layer="94"/>
<wire x1="20.32" y1="12.7" x2="20.32" y2="-15.24" width="0.254" layer="94"/>
<wire x1="20.32" y1="-15.24" x2="-20.32" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-15.24" x2="-20.32" y2="12.7" width="0.254" layer="94"/>
<pin name="VCC" x="-10.16" y="17.78" length="middle" rot="R270"/>
<pin name="NRESET" x="-3.81" y="17.78" length="middle" rot="R270"/>
<pin name="GND@1" x="-2.54" y="-20.32" length="middle" rot="R90"/>
<pin name="VBACKUP" x="10.16" y="17.78" length="middle" rot="R270"/>
<pin name="3DFIX" x="-25.4" y="6.35" length="middle"/>
<pin name="GND@2" x="-16.51" y="-20.32" length="middle" rot="R90"/>
<pin name="TX" x="25.4" y="-6.35" length="middle" rot="R180"/>
<pin name="RX" x="25.4" y="-11.43" length="middle" rot="R180"/>
<pin name="GND@3" x="-11.43" y="-20.32" length="middle" rot="R90"/>
<pin name="RTCM" x="25.4" y="7.62" length="middle" rot="R180"/>
<pin name="1PPS" x="-25.4" y="1.27" length="middle"/>
<pin name="EX_ANT" x="-25.4" y="-10.16" length="middle"/>
<pin name="GND@4" x="-6.35" y="-20.32" length="middle" rot="R90"/>
<pin name="NC@1" x="17.78" y="-20.32" length="middle" rot="R90"/>
<pin name="NC@2" x="15.24" y="-20.32" length="middle" rot="R90"/>
<pin name="NC@3" x="12.7" y="-20.32" length="middle" rot="R90"/>
<pin name="NC@4" x="10.16" y="-20.32" length="middle" rot="R90"/>
<pin name="NC@5" x="7.62" y="-20.32" length="middle" rot="R90"/>
<pin name="NC@6" x="5.08" y="-20.32" length="middle" rot="R90"/>
<pin name="NC@7" x="2.54" y="-20.32" length="middle" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GPS_FGPMMOPA6H">
<gates>
<gate name="G$1" symbol="FGPMMOPA6H" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FGPMMOPA6H_FOOTPRINT">
<connects>
<connect gate="G$1" pin="1PPS" pad="PIN13"/>
<connect gate="G$1" pin="3DFIX" pad="PIN5"/>
<connect gate="G$1" pin="EX_ANT" pad="PIN11"/>
<connect gate="G$1" pin="GND@1" pad="PIN3"/>
<connect gate="G$1" pin="GND@2" pad="PIN8"/>
<connect gate="G$1" pin="GND@3" pad="PIN12"/>
<connect gate="G$1" pin="GND@4" pad="PIN19"/>
<connect gate="G$1" pin="NC@1" pad="PIN6"/>
<connect gate="G$1" pin="NC@2" pad="PIN7"/>
<connect gate="G$1" pin="NC@3" pad="PIN15"/>
<connect gate="G$1" pin="NC@4" pad="PIN16"/>
<connect gate="G$1" pin="NC@5" pad="PIN17"/>
<connect gate="G$1" pin="NC@6" pad="PIN18"/>
<connect gate="G$1" pin="NC@7" pad="PIN20"/>
<connect gate="G$1" pin="NRESET" pad="PIN2"/>
<connect gate="G$1" pin="RTCM" pad="PIN14"/>
<connect gate="G$1" pin="RX" pad="PIN10"/>
<connect gate="G$1" pin="TX" pad="PIN9"/>
<connect gate="G$1" pin="VBACKUP" pad="PIN4"/>
<connect gate="G$1" pin="VCC" pad="PIN1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA10-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-12.7" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.938" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="10.795" y="1.651" size="1.27" layer="21" ratio="10">10</text>
<text x="1.27" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA10-1">
<wire x1="3.81" y1="-12.7" x2="-1.27" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="15.24" x2="-1.27" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-12.7" x2="3.81" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="15.24" x2="3.81" y2="15.24" width="0.4064" layer="94"/>
<text x="-1.27" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="16.002" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA10-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA10-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA10-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="10" pad="10"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
<connect gate="1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
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
<part name="U$1" library="RobThePyro" deviceset="GPS_FGPMMOPA6H" device=""/>
<part name="SV1" library="con-lstb" deviceset="MA10-1" device=""/>
<part name="SV2" library="con-lstb" deviceset="MA10-1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="0" y="0"/>
<instance part="SV1" gate="1" x="-2.54" y="48.26" rot="R270"/>
<instance part="SV2" gate="1" x="2.54" y="-53.34" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="SV1" gate="1" pin="1"/>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="-12.7" y1="40.64" x2="-12.7" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="20.32" x2="-10.16" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="NRESET"/>
<wire x1="-3.81" y1="17.78" x2="-5.08" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="17.78" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="2"/>
<wire x1="-10.16" y1="22.86" x2="-10.16" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VBACKUP"/>
<wire x1="10.16" y1="17.78" x2="2.54" y2="17.78" width="0.1524" layer="91"/>
<wire x1="2.54" y1="17.78" x2="-5.08" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="4"/>
<wire x1="-5.08" y1="25.4" x2="-5.08" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="3DFIX"/>
<wire x1="-25.4" y1="6.35" x2="7.62" y2="6.35" width="0.1524" layer="91"/>
<wire x1="7.62" y1="6.35" x2="12.7" y2="11.43" width="0.1524" layer="91"/>
<wire x1="12.7" y1="11.43" x2="12.7" y2="17.78" width="0.1524" layer="91"/>
<wire x1="12.7" y1="17.78" x2="11.43" y2="19.05" width="0.1524" layer="91"/>
<wire x1="11.43" y1="19.05" x2="5.08" y2="19.05" width="0.1524" layer="91"/>
<wire x1="5.08" y1="19.05" x2="-2.54" y2="26.67" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="5"/>
<wire x1="-2.54" y1="26.67" x2="-2.54" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="NC@1"/>
<wire x1="17.78" y1="-20.32" x2="17.78" y2="15.24" width="0.1524" layer="91"/>
<wire x1="17.78" y1="15.24" x2="12.7" y2="20.32" width="0.1524" layer="91"/>
<wire x1="12.7" y1="20.32" x2="6.35" y2="20.32" width="0.1524" layer="91"/>
<wire x1="6.35" y1="20.32" x2="0" y2="26.67" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="6"/>
<wire x1="0" y1="26.67" x2="0" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SV1" gate="1" pin="7"/>
<wire x1="2.54" y1="40.64" x2="2.54" y2="27.94" width="0.1524" layer="91"/>
<wire x1="2.54" y1="27.94" x2="7.62" y2="22.86" width="0.1524" layer="91"/>
<wire x1="7.62" y1="22.86" x2="12.7" y2="22.86" width="0.1524" layer="91"/>
<wire x1="12.7" y1="22.86" x2="15.24" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="NC@2"/>
<wire x1="15.24" y1="20.32" x2="15.24" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="SV1" gate="1" pin="8"/>
<wire x1="5.08" y1="40.64" x2="5.08" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-5.08" x2="3.81" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND@2"/>
<wire x1="3.81" y1="-6.35" x2="-2.54" y2="-6.35" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-6.35" x2="-16.51" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SV1" gate="1" pin="9"/>
<pinref part="U$1" gate="G$1" pin="TX"/>
<wire x1="7.62" y1="40.64" x2="7.62" y2="11.43" width="0.1524" layer="91"/>
<wire x1="7.62" y1="11.43" x2="25.4" y2="-6.35" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="SV1" gate="1" pin="10"/>
<pinref part="U$1" gate="G$1" pin="RX"/>
<wire x1="10.16" y1="40.64" x2="10.16" y2="3.81" width="0.1524" layer="91"/>
<wire x1="10.16" y1="3.81" x2="25.4" y2="-11.43" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="EX_ANT"/>
<wire x1="-25.4" y1="-10.16" x2="-25.4" y2="-19.05" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-19.05" x2="-19.05" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="SV2" gate="1" pin="1"/>
<wire x1="-19.05" y1="-25.4" x2="-7.62" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-25.4" x2="12.7" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND@3"/>
<pinref part="SV2" gate="1" pin="2"/>
<wire x1="-11.43" y1="-20.32" x2="-11.43" y2="-24.13" width="0.1524" layer="91"/>
<wire x1="-11.43" y1="-24.13" x2="10.16" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="1PPS"/>
<pinref part="SV2" gate="1" pin="3"/>
<wire x1="-25.4" y1="1.27" x2="-25.4" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-12.7" x2="7.62" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="RTCM"/>
<pinref part="SV2" gate="1" pin="4"/>
<wire x1="25.4" y1="7.62" x2="25.4" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-25.4" x2="5.08" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="SV2" gate="1" pin="5"/>
<pinref part="U$1" gate="G$1" pin="NC@3"/>
<wire x1="2.54" y1="-45.72" x2="2.54" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-30.48" x2="12.7" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="SV2" gate="1" pin="6"/>
<pinref part="U$1" gate="G$1" pin="NC@4"/>
<wire x1="0" y1="-45.72" x2="0" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="0" y1="-30.48" x2="10.16" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="SV2" gate="1" pin="7"/>
<pinref part="U$1" gate="G$1" pin="NC@5"/>
<wire x1="-2.54" y1="-45.72" x2="-2.54" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-30.48" x2="7.62" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="SV2" gate="1" pin="8"/>
<pinref part="U$1" gate="G$1" pin="NC@6"/>
<wire x1="-5.08" y1="-45.72" x2="-5.08" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-30.48" x2="5.08" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="SV2" gate="1" pin="9"/>
<pinref part="U$1" gate="G$1" pin="GND@4"/>
<wire x1="-7.62" y1="-45.72" x2="-7.62" y2="-21.59" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-21.59" x2="-6.35" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="SV2" gate="1" pin="10"/>
<pinref part="U$1" gate="G$1" pin="NC@7"/>
<wire x1="-10.16" y1="-45.72" x2="-10.16" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-33.02" x2="2.54" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND@1"/>
<wire x1="-2.54" y1="-20.32" x2="0" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="0" y1="-20.32" x2="0" y2="16.51" width="0.1524" layer="91"/>
<wire x1="0" y1="16.51" x2="-7.62" y2="24.13" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="3"/>
<wire x1="-7.62" y1="24.13" x2="-7.62" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
