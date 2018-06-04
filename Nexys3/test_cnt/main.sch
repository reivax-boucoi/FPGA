<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(15:0)" />
        <port polarity="Input" name="XLXN_18" />
        <port polarity="Input" name="XLXN_19" />
        <port polarity="Input" name="XLXN_20" />
        <port polarity="Output" name="XLXN_21(15:0)" />
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="cb16ce" name="XLXI_10">
            <blockpin signalname="XLXN_18" name="C" />
            <blockpin signalname="XLXN_20" name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_21(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="576" name="XLXI_10" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1328" y1="448" y2="448" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="448" name="XLXN_18" orien="R180" />
        <branch name="XLXN_19">
            <wire x2="1328" y1="544" y2="544" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="544" name="XLXN_19" orien="R180" />
        <branch name="XLXN_20">
            <wire x2="1328" y1="384" y2="384" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1296" y="384" name="XLXN_20" orien="R180" />
        <branch name="XLXN_21(15:0)">
            <wire x2="1744" y1="320" y2="320" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="320" name="XLXN_21(15:0)" orien="R0" />
    </sheet>
</drawing>