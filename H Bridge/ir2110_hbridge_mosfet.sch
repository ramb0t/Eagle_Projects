<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
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
<library name="ir2112">
<description>International Rectifier HIGH AND LOW SIDE DRIVER IR2112</description>
<packages>
<package name="DIL14">
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="0" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.905" y1="0" x2="-2.54" y2="-0.635" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.54" y1="2.54" x2="12.7" y2="2.54" width="0.127" layer="21"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="-2.54" width="0.127" layer="21"/>
<wire x1="12.7" y1="-2.54" x2="-2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="0.635" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="-2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="2" x="0" y="-2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="4" x="5.08" y="-2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="5" x="7.62" y="-2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="6" x="10.16" y="-2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="7" x="12.7" y="-2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="8" x="12.7" y="2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="9" x="10.16" y="2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="10" x="7.62" y="2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="11" x="5.08" y="2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="12" x="2.54" y="2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="13" x="0" y="2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<pad name="14" x="-2.54" y="2.54" drill="0.5" diameter="1.27" shape="long" rot="R90"/>
<text x="-1.27" y="-0.635" size="1.27" layer="21">&gt;VALUE</text>
<text x="-3.175" y="-3.81" size="1.27" layer="21" rot="R90">&gt;NAME</text>
<hole x="-2.54" y="-2.54" drill="0.6"/>
<hole x="0" y="-2.54" drill="0.6"/>
<hole x="2.54" y="-2.54" drill="0.6"/>
<hole x="5.08" y="-2.54" drill="0.6"/>
<hole x="7.62" y="-2.54" drill="0.6"/>
<hole x="10.16" y="-2.54" drill="0.6"/>
<hole x="12.7" y="-2.54" drill="0.6"/>
<hole x="12.7" y="2.54" drill="0.6"/>
<hole x="10.16" y="2.54" drill="0.6"/>
<hole x="7.62" y="2.54" drill="0.6"/>
<hole x="5.08" y="2.54" drill="0.6"/>
<hole x="2.54" y="2.54" drill="0.6"/>
<hole x="0" y="2.54" drill="0.6"/>
<hole x="-2.54" y="2.54" drill="0.6"/>
</package>
</packages>
<symbols>
<symbol name="IR2112">
<wire x1="7.62" y1="17.78" x2="-7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<text x="-7.62" y="17.78" size="1.778" layer="94">&gt;NAME</text>
<text x="-7.62" y="-20.32" size="1.778" layer="94">&gt;VALUE</text>
<pin name="SD" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="HIN" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="LIN" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="VDD" x="-12.7" y="10.16" length="middle" direction="sup"/>
<pin name="VSS" x="-12.7" y="-10.16" length="middle" direction="sup"/>
<pin name="VCC" x="12.7" y="-5.08" length="middle" direction="sup" rot="R180"/>
<pin name="COM" x="12.7" y="-10.16" length="middle" direction="sup" rot="R180"/>
<pin name="VS" x="12.7" y="5.08" length="middle" direction="sup" rot="R180"/>
<pin name="VB" x="12.7" y="10.16" length="middle" direction="sup" rot="R180"/>
<pin name="HO" x="12.7" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="LO" x="12.7" y="-15.24" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="IR2112" prefix="IC">
<gates>
<gate name="G$1" symbol="IR2112" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL14">
<connects>
<connect gate="G$1" pin="COM" pad="2"/>
<connect gate="G$1" pin="HIN" pad="10"/>
<connect gate="G$1" pin="HO" pad="7"/>
<connect gate="G$1" pin="LIN" pad="12"/>
<connect gate="G$1" pin="LO" pad="1"/>
<connect gate="G$1" pin="SD" pad="11"/>
<connect gate="G$1" pin="VB" pad="6"/>
<connect gate="G$1" pin="VCC" pad="3"/>
<connect gate="G$1" pin="VDD" pad="9"/>
<connect gate="G$1" pin="VS" pad="5"/>
<connect gate="G$1" pin="VSS" pad="13"/>
</connects>
<technologies>
<technology name=""/>
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
<part name="IC1" library="ir2112" deviceset="IR2112" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="15.24" y="50.8"/>
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
