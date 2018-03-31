<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0"/>
        <edge from="n0" to="n0"><attr name="label"><string>type:Game</string></attr></edge>
        <edge from="n0" to="n0"><attr name="label"><string>let: blocks=2</string></attr></edge>
        
        <node id="n1"/>
        <edge from="n1" to="n1"><attr name="label"><string>type:Space</string></attr></edge>
        <edge from="n1" to="n1"><attr name="label"><string>let: x=0</string></attr></edge>
        <edge from="n1" to="n1"><attr name="label"><string>let: y=0</string></attr></edge>
        
        <node id="n2"/>
        <edge from="n2" to="n2"><attr name="label"><string>type:Player</string></attr></edge>
        <node id="n3"/>
        <edge from="n3" to="n3"><attr name="label"><string>type:Player</string></attr></edge>
        <edge from="n2" to="n3"><attr name="label"><string>nextPlayer</string></attr></edge>
        <edge from="n3" to="n2"><attr name="label"><string>nextPlayer</string></attr></edge>
        <edge from="n0" to="n2"><attr name="label"><string>currentPlayer</string></attr></edge>
    </graph>
</gxl>
