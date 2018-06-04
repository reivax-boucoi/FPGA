<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <port polarity="Input" name="XLXN_4" />
        <port polarity="Input" name="XLXN_5" />
        <port polarity="Output" name="XLXN_6" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1376" y="1184" name="XLXI_2" orien="R0" />
        <instance x="1664" y="1120" name="XLXI_3" orien="R0" />
        <instance x="1120" y="1088" name="XLXI_4" orien="R0" />
        <instance x="1120" y="1152" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1376" y1="1056" y2="1056" x1="1344" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1376" y1="1120" y2="1120" x1="1344" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1664" y1="1088" y2="1088" x1="1632" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1120" y1="1056" y2="1056" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="1056" name="XLXN_4" orien="R180" />
        <branch name="XLXN_5">
            <wire x2="1120" y1="1120" y2="1120" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1088" y="1120" name="XLXN_5" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="1920" y1="1088" y2="1088" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1088" name="XLXN_6" orien="R0" />
    </sheet>
</drawing>