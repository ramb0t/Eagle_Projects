<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
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
<library name="atmel-avr">
<description>&lt;b&gt;Atmel AVR Processors&lt;/b&gt; - v1.02 (08/29/2010)&lt;p&gt;
&lt;p&gt;THIS LIBRARY IS PROVIDED AS IS AND WITHOUT WARRANTY OF ANY KIND, EXPRESSED OR IMPLIED.&lt;br&gt;
USE AT YOUR OWN RISK!&lt;p&gt;
&lt;author&gt;Copyright (C) 2008, Bob Starr&lt;br&gt; http://www.bobstarr.net&lt;br&gt;&lt;/author&gt;</description>
<packages>
<package name="TQFP32A">
<description>&lt;B&gt;Thin Plasic Quad Flat Package&lt;/B&gt;&lt;p&gt;
0.8 mm pitch</description>
<wire x1="3.505" y1="3.505" x2="3.505" y2="-3.505" width="0.2032" layer="21"/>
<wire x1="3.505" y1="-3.505" x2="-3.505" y2="-3.505" width="0.2032" layer="21"/>
<wire x1="-3.505" y1="-3.505" x2="-3.505" y2="3.15" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="3.505" x2="3.505" y2="3.505" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="3.505" x2="-3.505" y2="3.15" width="0.2032" layer="21"/>
<circle x="-2.7432" y="2.7432" radius="0.3592" width="0" layer="21"/>
<smd name="1" x="-4.4" y="2.8" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="2" x="-4.4" y="2" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="3" x="-4.4" y="1.2" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="4" x="-4.4" y="0.4" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="5" x="-4.4" y="-0.4" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="6" x="-4.4" y="-1.2" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="7" x="-4.4" y="-2" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="8" x="-4.4" y="-2.8" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="9" x="-2.8" y="-4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="10" x="-2" y="-4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="11" x="-1.2" y="-4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="12" x="-0.4" y="-4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="13" x="0.4" y="-4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="14" x="1.2" y="-4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="15" x="2" y="-4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="16" x="2.8" y="-4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="17" x="4.4" y="-2.8" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="19" x="4.4" y="-1.2" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="20" x="4.4" y="-0.4" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="21" x="4.4" y="0.4" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="22" x="4.4" y="1.2" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="23" x="4.4" y="2" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="24" x="4.4" y="2.8" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<smd name="25" x="2.8" y="4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="26" x="2" y="4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="27" x="1.2" y="4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="28" x="0.4" y="4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="29" x="-0.4" y="4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="30" x="-1.2" y="4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="31" x="-2" y="4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="32" x="-2.8" y="4.4" dx="0.5588" dy="1.27" layer="1" roundness="75"/>
<smd name="18" x="4.4" y="-2" dx="1.27" dy="0.5588" layer="1" roundness="75"/>
<text x="-3" y="5.5" size="1.016" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.3876" y="-1.5875" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.4953" y1="2.5714" x2="-3.5047" y2="3.0286" layer="51"/>
<rectangle x1="-4.4953" y1="1.7714" x2="-3.5047" y2="2.2286" layer="51"/>
<rectangle x1="-4.4953" y1="0.9714" x2="-3.5047" y2="1.4286" layer="51"/>
<rectangle x1="-4.4953" y1="0.1714" x2="-3.5047" y2="0.6286" layer="51"/>
<rectangle x1="-4.4953" y1="-0.6286" x2="-3.5047" y2="-0.1714" layer="51"/>
<rectangle x1="-4.4953" y1="-1.4286" x2="-3.5047" y2="-0.9714" layer="51"/>
<rectangle x1="-4.4953" y1="-2.2286" x2="-3.5047" y2="-1.7714" layer="51"/>
<rectangle x1="-4.4953" y1="-3.0286" x2="-3.5047" y2="-2.5714" layer="51"/>
<rectangle x1="-3.2953" y1="-4.2286" x2="-2.3047" y2="-3.7714" layer="51" rot="R90"/>
<rectangle x1="-2.4953" y1="-4.2286" x2="-1.5047" y2="-3.7714" layer="51" rot="R90"/>
<rectangle x1="-1.6953" y1="-4.2286" x2="-0.7047" y2="-3.7714" layer="51" rot="R90"/>
<rectangle x1="-0.8953" y1="-4.2286" x2="0.0953" y2="-3.7714" layer="51" rot="R90"/>
<rectangle x1="-0.0953" y1="-4.2286" x2="0.8953" y2="-3.7714" layer="51" rot="R90"/>
<rectangle x1="0.7047" y1="-4.2286" x2="1.6953" y2="-3.7714" layer="51" rot="R90"/>
<rectangle x1="1.5047" y1="-4.2286" x2="2.4953" y2="-3.7714" layer="51" rot="R90"/>
<rectangle x1="2.3047" y1="-4.2286" x2="3.2953" y2="-3.7714" layer="51" rot="R90"/>
<rectangle x1="3.5047" y1="-3.0286" x2="4.4953" y2="-2.5714" layer="51" rot="R180"/>
<rectangle x1="3.5047" y1="-2.2286" x2="4.4953" y2="-1.7714" layer="51" rot="R180"/>
<rectangle x1="3.5047" y1="-1.4286" x2="4.4953" y2="-0.9714" layer="51" rot="R180"/>
<rectangle x1="3.5047" y1="-0.6286" x2="4.4953" y2="-0.1714" layer="51" rot="R180"/>
<rectangle x1="3.5047" y1="0.1714" x2="4.4953" y2="0.6286" layer="51" rot="R180"/>
<rectangle x1="3.5047" y1="0.9714" x2="4.4953" y2="1.4286" layer="51" rot="R180"/>
<rectangle x1="3.5047" y1="1.7714" x2="4.4953" y2="2.2286" layer="51" rot="R180"/>
<rectangle x1="3.5047" y1="2.5714" x2="4.4953" y2="3.0286" layer="51" rot="R180"/>
<rectangle x1="-3.2953" y1="3.7714" x2="-2.3047" y2="4.2286" layer="51" rot="R270"/>
<rectangle x1="-2.4953" y1="3.7714" x2="-1.5047" y2="4.2286" layer="51" rot="R270"/>
<rectangle x1="-1.6953" y1="3.7714" x2="-0.7047" y2="4.2286" layer="51" rot="R270"/>
<rectangle x1="-0.8953" y1="3.7714" x2="0.0953" y2="4.2286" layer="51" rot="R270"/>
<rectangle x1="-0.0953" y1="3.7714" x2="0.8953" y2="4.2286" layer="51" rot="R270"/>
<rectangle x1="0.7047" y1="3.7714" x2="1.6953" y2="4.2286" layer="51" rot="R270"/>
<rectangle x1="1.5047" y1="3.7714" x2="2.4953" y2="4.2286" layer="51" rot="R270"/>
<rectangle x1="2.3047" y1="3.7714" x2="3.2953" y2="4.2286" layer="51" rot="R270"/>
</package>
<package name="MLF32">
<description>&lt;b&gt;32M1-A&lt;/b&gt; Micro Lead Frame package (MLF)</description>
<wire x1="-2.35" y1="2.15" x2="-2.15" y2="2.35" width="0.2032" layer="21"/>
<wire x1="-2.15" y1="2.35" x2="2.15" y2="2.35" width="0.2032" layer="51"/>
<wire x1="2.15" y1="2.35" x2="2.35" y2="2.15" width="0.2032" layer="21"/>
<wire x1="2.35" y1="2.15" x2="2.35" y2="-2.15" width="0.2032" layer="51"/>
<wire x1="2.35" y1="-2.15" x2="2.15" y2="-2.35" width="0.2032" layer="21"/>
<wire x1="2.15" y1="-2.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-2.35" y2="-2.15" width="0.2032" layer="21"/>
<wire x1="-2.35" y1="-2.15" x2="-2.35" y2="2.15" width="0.2032" layer="51"/>
<circle x="-1.65" y="1.65" radius="0.15" width="0" layer="21"/>
<smd name="1" x="-2.35" y="1.75" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="2" x="-2.35" y="1.25" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="3" x="-2.35" y="0.75" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="4" x="-2.35" y="0.25" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="5" x="-2.35" y="-0.25" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="6" x="-2.35" y="-0.75" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="7" x="-2.35" y="-1.25" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="8" x="-2.35" y="-1.75" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="9" x="-1.75" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="10" x="-1.25" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="11" x="-0.75" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="12" x="-0.25" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="13" x="0.25" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="14" x="0.75" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="15" x="1.25" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="16" x="1.75" y="-2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="17" x="2.35" y="-1.75" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="18" x="2.35" y="-1.25" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="19" x="2.35" y="-0.75" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="20" x="2.35" y="-0.25" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="21" x="2.35" y="0.25" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="22" x="2.35" y="0.75" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="23" x="2.35" y="1.25" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="24" x="2.35" y="1.75" dx="0.7" dy="0.3" layer="1" roundness="100"/>
<smd name="25" x="1.75" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="26" x="1.25" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="27" x="0.75" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="28" x="0.25" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="29" x="-0.25" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="30" x="-0.75" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="31" x="-1.25" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<smd name="32" x="-1.75" y="2.35" dx="0.3" dy="0.7" layer="1" roundness="100"/>
<text x="-1.905" y="3.175" size="1.016" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.905" y="-4.1275" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.5" y1="1.6" x2="-2.05" y2="1.9" layer="51"/>
<rectangle x1="-2.5" y1="1.1" x2="-2.05" y2="1.4" layer="51"/>
<rectangle x1="-2.5" y1="0.6" x2="-2.05" y2="0.9" layer="51"/>
<rectangle x1="-2.5" y1="0.1" x2="-2.05" y2="0.4" layer="51"/>
<rectangle x1="-2.5" y1="-0.4" x2="-2.05" y2="-0.1" layer="51"/>
<rectangle x1="-2.5" y1="-0.9" x2="-2.05" y2="-0.6" layer="51"/>
<rectangle x1="-2.5" y1="-1.4" x2="-2.05" y2="-1.1" layer="51"/>
<rectangle x1="-2.5" y1="-1.9" x2="-2.05" y2="-1.6" layer="51"/>
<rectangle x1="-1.9" y1="-2.5" x2="-1.6" y2="-2.05" layer="51"/>
<rectangle x1="-1.4" y1="-2.5" x2="-1.1" y2="-2.05" layer="51"/>
<rectangle x1="-0.9" y1="-2.5" x2="-0.6" y2="-2.05" layer="51"/>
<rectangle x1="-0.4" y1="-2.5" x2="-0.1" y2="-2.05" layer="51"/>
<rectangle x1="0.1" y1="-2.5" x2="0.4" y2="-2.05" layer="51"/>
<rectangle x1="0.6" y1="-2.5" x2="0.9" y2="-2.05" layer="51"/>
<rectangle x1="1.1" y1="-2.5" x2="1.4" y2="-2.05" layer="51"/>
<rectangle x1="1.6" y1="-2.5" x2="1.9" y2="-2.05" layer="51"/>
<rectangle x1="2.05" y1="-1.9" x2="2.5" y2="-1.6" layer="51"/>
<rectangle x1="2.05" y1="-1.4" x2="2.5" y2="-1.1" layer="51"/>
<rectangle x1="2.05" y1="-0.9" x2="2.5" y2="-0.6" layer="51"/>
<rectangle x1="2.05" y1="-0.4" x2="2.5" y2="-0.1" layer="51"/>
<rectangle x1="2.05" y1="0.1" x2="2.5" y2="0.4" layer="51"/>
<rectangle x1="2.05" y1="0.6" x2="2.5" y2="0.9" layer="51"/>
<rectangle x1="2.05" y1="1.1" x2="2.5" y2="1.4" layer="51"/>
<rectangle x1="2.05" y1="1.6" x2="2.5" y2="1.9" layer="51"/>
<rectangle x1="1.6" y1="2.05" x2="1.9" y2="2.5" layer="51"/>
<rectangle x1="1.1" y1="2.05" x2="1.4" y2="2.5" layer="51"/>
<rectangle x1="0.6" y1="2.05" x2="0.9" y2="2.5" layer="51"/>
<rectangle x1="0.1" y1="2.05" x2="0.4" y2="2.5" layer="51"/>
<rectangle x1="-0.4" y1="2.05" x2="-0.1" y2="2.5" layer="51"/>
<rectangle x1="-0.9" y1="2.05" x2="-0.6" y2="2.5" layer="51"/>
<rectangle x1="-1.4" y1="2.05" x2="-1.1" y2="2.5" layer="51"/>
<rectangle x1="-1.9" y1="2.05" x2="-1.6" y2="2.5" layer="51"/>
<rectangle x1="-1.5" y1="-1.5" x2="1.5" y2="1.5" layer="29"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="31"/>
<rectangle x1="-1.25" y1="-0.25" x2="-0.75" y2="0.25" layer="31"/>
<rectangle x1="0.75" y1="-0.25" x2="1.25" y2="0.25" layer="31"/>
<rectangle x1="0.75" y1="0.75" x2="1.25" y2="1.25" layer="31"/>
<rectangle x1="-0.25" y1="0.75" x2="0.25" y2="1.25" layer="31"/>
<rectangle x1="-1.25" y1="0.75" x2="-0.75" y2="1.25" layer="31"/>
<rectangle x1="-1.25" y1="-1.25" x2="-0.75" y2="-0.75" layer="31"/>
<rectangle x1="-0.25" y1="-1.25" x2="0.25" y2="-0.75" layer="31"/>
<rectangle x1="0.75" y1="-1.25" x2="1.25" y2="-0.75" layer="31"/>
</package>
</packages>
<symbols>
<symbol name="ATMEGA48P/88P/168P/328P">
<wire x1="-33.02" y1="30.48" x2="33.02" y2="30.48" width="0.4064" layer="94"/>
<wire x1="33.02" y1="30.48" x2="33.02" y2="-33.02" width="0.4064" layer="94"/>
<wire x1="33.02" y1="-33.02" x2="-33.02" y2="-33.02" width="0.4064" layer="94"/>
<wire x1="-33.02" y1="-33.02" x2="-33.02" y2="30.48" width="0.4064" layer="94"/>
<text x="-33.02" y="31.75" size="1.778" layer="95">&gt;NAME</text>
<text x="-33.02" y="-35.56" size="1.778" layer="96">&gt;VALUE</text>
<pin name="(PCINT5/SCK)PB5" x="38.1" y="-30.48" length="middle" rot="R180"/>
<pin name="PB7(TOSC2/XTAL2/PCINT7)" x="-38.1" y="10.16" length="middle"/>
<pin name="PB6(TOSC1/XTAL1/PCINT6)" x="-38.1" y="20.32" length="middle"/>
<pin name="GND@3" x="-38.1" y="-25.4" length="middle" direction="pwr"/>
<pin name="GND@5" x="-38.1" y="-27.94" length="middle" direction="pwr"/>
<pin name="VCC@4" x="-38.1" y="-7.62" length="middle" direction="pwr"/>
<pin name="VCC@6" x="-38.1" y="-10.16" length="middle" direction="pwr"/>
<pin name="GND@21" x="-38.1" y="-30.48" length="middle" direction="pwr"/>
<pin name="AREF" x="-38.1" y="-20.32" length="middle"/>
<pin name="AVCC" x="-38.1" y="-15.24" length="middle" direction="pwr"/>
<pin name="(PCINT4/MISO)PB4" x="38.1" y="-27.94" length="middle" rot="R180"/>
<pin name="(PCINT3/OC2A/MOSI)PB3" x="38.1" y="-25.4" length="middle" rot="R180"/>
<pin name="(PCINT2/SS/OC1B)PB2" x="38.1" y="-22.86" length="middle" rot="R180"/>
<pin name="(PCINT1/OC1A)PB1" x="38.1" y="-20.32" length="middle" rot="R180"/>
<pin name="(PCINT0/CLKO/ICP1)PB0" x="38.1" y="-17.78" length="middle" rot="R180"/>
<pin name="(PCINT23/AIN1)PD7" x="38.1" y="-12.7" length="middle" rot="R180"/>
<pin name="(PCINT22/OC0A/AIN0)PD6" x="38.1" y="-10.16" length="middle" rot="R180"/>
<pin name="(PCINT21/OC0B/T1)PD5" x="38.1" y="-7.62" length="middle" rot="R180"/>
<pin name="(PCINT20/XCK/T0)PD4" x="38.1" y="-5.08" length="middle" rot="R180"/>
<pin name="(PCINT19/OC2B/INT1)PD3" x="38.1" y="-2.54" length="middle" rot="R180"/>
<pin name="(PCINT18/INT0)PD2" x="38.1" y="0" length="middle" rot="R180"/>
<pin name="(PCINT17/TXD)PD1" x="38.1" y="2.54" length="middle" rot="R180"/>
<pin name="(PCINT16/RXD)PD0" x="38.1" y="5.08" length="middle" rot="R180"/>
<pin name="ADC7" x="38.1" y="10.16" length="middle" rot="R180"/>
<pin name="ADC6" x="38.1" y="12.7" length="middle" rot="R180"/>
<pin name="(PCINT13/SCL/ADC5)PC5" x="38.1" y="15.24" length="middle" rot="R180"/>
<pin name="(PCINT12/SDA/ADC4)PC4" x="38.1" y="17.78" length="middle" rot="R180"/>
<pin name="(PCINT11/ADC3)PC3" x="38.1" y="20.32" length="middle" rot="R180"/>
<pin name="(PCINT10/ADC2)PC2" x="38.1" y="22.86" length="middle" rot="R180"/>
<pin name="(PCINT9/ADC1)PC1" x="38.1" y="25.4" length="middle" rot="R180"/>
<pin name="(PCINT8/ADC0)PC0" x="38.1" y="27.94" length="middle" rot="R180"/>
<pin name="PC6(!RESET!)" x="-38.1" y="27.94" length="middle" direction="in"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA48P/88P/168P/328P" prefix="U">
<description>&lt;b&gt;MICROCONTROLLER&lt;/b&gt;&lt;p&gt;
4/8/16/32K Flash</description>
<gates>
<gate name="G$1" symbol="ATMEGA48P/88P/168P/328P" x="0" y="0"/>
</gates>
<devices>
<device name="-A" package="TQFP32A">
<connects>
<connect gate="G$1" pin="(PCINT0/CLKO/ICP1)PB0" pad="12"/>
<connect gate="G$1" pin="(PCINT1/OC1A)PB1" pad="13"/>
<connect gate="G$1" pin="(PCINT10/ADC2)PC2" pad="25"/>
<connect gate="G$1" pin="(PCINT11/ADC3)PC3" pad="26"/>
<connect gate="G$1" pin="(PCINT12/SDA/ADC4)PC4" pad="27"/>
<connect gate="G$1" pin="(PCINT13/SCL/ADC5)PC5" pad="28"/>
<connect gate="G$1" pin="(PCINT16/RXD)PD0" pad="30"/>
<connect gate="G$1" pin="(PCINT17/TXD)PD1" pad="31"/>
<connect gate="G$1" pin="(PCINT18/INT0)PD2" pad="32"/>
<connect gate="G$1" pin="(PCINT19/OC2B/INT1)PD3" pad="1"/>
<connect gate="G$1" pin="(PCINT2/SS/OC1B)PB2" pad="14"/>
<connect gate="G$1" pin="(PCINT20/XCK/T0)PD4" pad="2"/>
<connect gate="G$1" pin="(PCINT21/OC0B/T1)PD5" pad="9"/>
<connect gate="G$1" pin="(PCINT22/OC0A/AIN0)PD6" pad="10"/>
<connect gate="G$1" pin="(PCINT23/AIN1)PD7" pad="11"/>
<connect gate="G$1" pin="(PCINT3/OC2A/MOSI)PB3" pad="15"/>
<connect gate="G$1" pin="(PCINT4/MISO)PB4" pad="16"/>
<connect gate="G$1" pin="(PCINT5/SCK)PB5" pad="17"/>
<connect gate="G$1" pin="(PCINT8/ADC0)PC0" pad="23"/>
<connect gate="G$1" pin="(PCINT9/ADC1)PC1" pad="24"/>
<connect gate="G$1" pin="ADC6" pad="19"/>
<connect gate="G$1" pin="ADC7" pad="22"/>
<connect gate="G$1" pin="AREF" pad="20"/>
<connect gate="G$1" pin="AVCC" pad="18"/>
<connect gate="G$1" pin="GND@21" pad="21"/>
<connect gate="G$1" pin="GND@3" pad="3"/>
<connect gate="G$1" pin="GND@5" pad="5"/>
<connect gate="G$1" pin="PB6(TOSC1/XTAL1/PCINT6)" pad="7"/>
<connect gate="G$1" pin="PB7(TOSC2/XTAL2/PCINT7)" pad="8"/>
<connect gate="G$1" pin="PC6(!RESET!)" pad="29"/>
<connect gate="G$1" pin="VCC@4" pad="4"/>
<connect gate="G$1" pin="VCC@6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-M1-A" package="MLF32">
<connects>
<connect gate="G$1" pin="(PCINT0/CLKO/ICP1)PB0" pad="12"/>
<connect gate="G$1" pin="(PCINT1/OC1A)PB1" pad="13"/>
<connect gate="G$1" pin="(PCINT10/ADC2)PC2" pad="25"/>
<connect gate="G$1" pin="(PCINT11/ADC3)PC3" pad="26"/>
<connect gate="G$1" pin="(PCINT12/SDA/ADC4)PC4" pad="27"/>
<connect gate="G$1" pin="(PCINT13/SCL/ADC5)PC5" pad="28"/>
<connect gate="G$1" pin="(PCINT16/RXD)PD0" pad="30"/>
<connect gate="G$1" pin="(PCINT17/TXD)PD1" pad="31"/>
<connect gate="G$1" pin="(PCINT18/INT0)PD2" pad="32"/>
<connect gate="G$1" pin="(PCINT19/OC2B/INT1)PD3" pad="1"/>
<connect gate="G$1" pin="(PCINT2/SS/OC1B)PB2" pad="14"/>
<connect gate="G$1" pin="(PCINT20/XCK/T0)PD4" pad="2"/>
<connect gate="G$1" pin="(PCINT21/OC0B/T1)PD5" pad="9"/>
<connect gate="G$1" pin="(PCINT22/OC0A/AIN0)PD6" pad="10"/>
<connect gate="G$1" pin="(PCINT23/AIN1)PD7" pad="11"/>
<connect gate="G$1" pin="(PCINT3/OC2A/MOSI)PB3" pad="15"/>
<connect gate="G$1" pin="(PCINT4/MISO)PB4" pad="16"/>
<connect gate="G$1" pin="(PCINT5/SCK)PB5" pad="17"/>
<connect gate="G$1" pin="(PCINT8/ADC0)PC0" pad="23"/>
<connect gate="G$1" pin="(PCINT9/ADC1)PC1" pad="24"/>
<connect gate="G$1" pin="ADC6" pad="19"/>
<connect gate="G$1" pin="ADC7" pad="22"/>
<connect gate="G$1" pin="AREF" pad="20"/>
<connect gate="G$1" pin="AVCC" pad="18"/>
<connect gate="G$1" pin="GND@21" pad="21"/>
<connect gate="G$1" pin="GND@3" pad="3"/>
<connect gate="G$1" pin="GND@5" pad="5"/>
<connect gate="G$1" pin="PB6(TOSC1/XTAL1/PCINT6)" pad="7"/>
<connect gate="G$1" pin="PB7(TOSC2/XTAL2/PCINT7)" pad="8"/>
<connect gate="G$1" pin="PC6(!RESET!)" pad="29"/>
<connect gate="G$1" pin="VCC@4" pad="4"/>
<connect gate="G$1" pin="VCC@6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
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
<part name="U1" library="atmel-avr" deviceset="ATMEGA48P/88P/168P/328P" device="-A"/>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="68.58" y="66.04"/>
<instance part="SUPPLY1" gate="GND" x="27.94" y="27.94"/>
<instance part="P+1" gate="1" x="27.94" y="63.5"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="GND@3"/>
<pinref part="U1" gate="G$1" pin="GND@5"/>
<wire x1="30.48" y1="40.64" x2="30.48" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND@21"/>
<wire x1="30.48" y1="38.1" x2="30.48" y2="35.56" width="0.1524" layer="91"/>
<junction x="30.48" y="38.1"/>
<wire x1="30.48" y1="35.56" x2="27.94" y2="35.56" width="0.1524" layer="91"/>
<junction x="30.48" y="35.56"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="27.94" y1="35.56" x2="27.94" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VCC@6"/>
<pinref part="U1" gate="G$1" pin="VCC@4"/>
<wire x1="30.48" y1="55.88" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="30.48" y1="58.42" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
<wire x1="27.94" y1="58.42" x2="27.94" y2="60.96" width="0.1524" layer="91"/>
<junction x="30.48" y="58.42"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
