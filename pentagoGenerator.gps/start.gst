<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gxl xmlns="http://www.gupro.de/GXL/gxl-1.0.dtd">
    <graph role="graph" edgeids="false" edgemode="directed" id="start">
        <attr name="$version">
            <string>curly</string>
        </attr>
        <node id="n0">
            <attr name="layout">
                <string>94 8 61 36</string>
            </attr>
        </node>
        <node id="n1">
            <attr name="layout">
                <string>10 199 38 54</string>
            </attr>
        </node>
        <node id="n2">
            <attr name="layout">
                <string>183 102 38 18</string>
            </attr>
        </node>
        <node id="n3">
            <attr name="layout">
                <string>269 192 38 18</string>
            </attr>
        </node>
        <node id="n4">
            <attr name="layout">
                <string>172 396 57 54</string>
            </attr>
        </node>
        <node id="n5">
            <attr name="layout">
                <string>580 41 57 54</string>
            </attr>
        </node>
        <node id="n6">
            <attr name="layout">
                <string>377 8 57 54</string>
            </attr>
        </node>
        <node id="n7">
            <attr name="layout">
                <string>413 384 57 54</string>
            </attr>
        </node>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>type:Game</string>
            </attr>
        </edge>
        <edge from="n0" to="n0">
            <attr name="label">
                <string>let:blocks = 2</string>
            </attr>
        </edge>
        <edge from="n0" to="n2">
            <attr name="label">
                <string>currentPlayer</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>type:Block</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:bx = 0</string>
            </attr>
        </edge>
        <edge from="n1" to="n1">
            <attr name="label">
                <string>let:by = 0</string>
            </attr>
        </edge>
        <edge from="n2" to="n2">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge from="n2" to="n3">
            <attr name="label">
                <string>nextPlayer</string>
            </attr>
        </edge>
        <edge from="n3" to="n3">
            <attr name="label">
                <string>type:Player</string>
            </attr>
        </edge>
        <edge from="n3" to="n2">
            <attr name="label">
                <string>nextPlayer</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>type:Direction</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:dx = 1</string>
            </attr>
        </edge>
        <edge from="n4" to="n4">
            <attr name="label">
                <string>let:dy = 0</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>type:Direction</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>let:dx = 0</string>
            </attr>
        </edge>
        <edge from="n5" to="n5">
            <attr name="label">
                <string>let:dy = 1</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>type:Direction</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>let:dx = 1</string>
            </attr>
        </edge>
        <edge from="n6" to="n6">
            <attr name="label">
                <string>let:dy = 1</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>type:Direction</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>let:dx = 1</string>
            </attr>
        </edge>
        <edge from="n7" to="n7">
            <attr name="label">
                <string>let:dy = -1</string>
            </attr>
        </edge>
    </graph>
</gxl>
