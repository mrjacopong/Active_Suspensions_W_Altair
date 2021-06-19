<?xml version="1.0" encoding="UTF-8"?>
<model name="fiat_500e_passive_random_road">
  <header formatversion="2" hwxversion="2021.0" script="oml"/>
  <edition>
    <properties>
      <property name="creator" value="adyer"/>
      <property name="creationdate" value="06/01/16 09:02:18"/>
      <property name="revision" value="0"/>
      <property name="lastmodifieddate" value="06/19/21 23:19:03"/>
      <property name="comments" value=""/>
    </properties>
  </edition>
  <initialization>time_final=2;&#xA;&#xA;%%vehicle parameters&#xA;ms=750;     % kg&#xA;mus=75;     % kg&#xA;kus=300000; % N/m&#xA;%ks=30000;   % N/m&#xA;cus=0;      % Ns/m&#xA;%cs=3000;    % Ns/m&#xA;&#xA;ks=GetFromBase(&apos;ks&apos;, 30000);&#xA;cs=GetFromBase(&apos;cs&apos;, 3000);&#xA;&#xA;&#xA;&#xA;&#xA;</initialization>
  <finalization/>
  <diagram>
    <block name="Suspension_Stroke_Comparison" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="127.67063903808685" y="-62.985809326172046"/>
        <size width="60" height="59.99999999999999"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;Passive&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="1"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[500,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="0"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;Suspension Stroke&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;Passive&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Sprung_Mass_Acc_Comparison" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="120.5355682373177" y="161.01419067382795"/>
        <size width="60" height="60"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;Passive&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="1"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[500,400]"/>
          <parameter name="winPos" value="[900,150]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="0"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Recreate&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="0"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;SprungMassAcc_comparison m/s2&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;Passive&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Bump rounded" type="block">
      <diagram>
        <block name="Output" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="271.12152099609375" y="304.4716491699219"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="ContTransFunc" type="block">
          <template name="system/Dynamical/ContTransFunc"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="157.20202636718753" y="284.4716491699219"/>
            <size width="72" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;───────&#xA;0.01s+1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="num" value="[1]"/>
              <parameter name="den" value="[1/100 1]"/>
            </section>
          </parameters>
        </block>
        <block name="SetSignal" type="block">
          <template name="system/Routing/SetSignal"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="261.6283264160156" y="237.61373901367188"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">road</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="tag" value="&apos;road&apos;"/>
              <parameter name="tagvis" value="&apos;Global&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Split" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="243.3543701171875" y="314.4716491699219"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="ContinuousRandom" type="block">
          <template name="system/SignalGenerators/ContinuousRandom"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-60.89244079589844" y="222.14968872070312"/>
            <size width="110" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Random Generator&#xA;Standard Normal</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parametercombobox name="distrib">
                <parameter name="uniform" value="0"/>
                <parameter name="normal" value="1"/>
                <parameter name="log_normal" value="0"/>
                <parameter name="beta" value="0"/>
                <parameter name="gamma" value="0"/>
                <parameter name="chi" value="0"/>
                <parameter name="exp" value="0"/>
                <parameter name="F" value="0"/>
                <parameter name="T" value="0"/>
                <parameter name="pearson" value="0"/>
                <parameter name="inv_gamma" value="0"/>
                <parameter name="inv_beta" value="0"/>
              </parametercombobox>
              <parameter name="seed" value="-1"/>
              <parametertable name="Uniform_param">
                <columns number="2">
                  <parameter name="A" value="0"/>
                  <parameter name="B" value="1"/>
                </columns>
                <rows number="distrib.uniform">
                </rows>
              </parametertable>
              <parametertable name="Normal_param">
                <columns number="2">
                  <parameter name="mean" value="0"/>
                  <parameter name="variance" value="1"/>
                </columns>
                <rows number="distrib.normal">
                  <row>
                    <value>0</value>
                    <value>1</value>
                  </row>
                </rows>
              </parametertable>
              <parametertable name="LNormal_param">
                <columns number="2">
                  <parameter name="meanL" value="0"/>
                  <parameter name="varianceL" value="1"/>
                </columns>
                <rows number="distrib.log_normal">
                </rows>
              </parametertable>
              <parametertable name="Beta_param">
                <columns number="2">
                  <parameter name="alpha" value="1"/>
                  <parameter name="beta" value="1"/>
                </columns>
                <rows number="distrib.beta">
                </rows>
              </parametertable>
              <parametertable name="Gamma_param">
                <columns number="2">
                  <parameter name="k" value="1"/>
                  <parameter name="theta" value="1"/>
                </columns>
                <rows number="distrib.gamma">
                </rows>
              </parametertable>
              <parametertable name="Chi_param">
                <columns number="1">
                  <parameter name="K" value="1"/>
                </columns>
                <rows number="distrib.chi">
                </rows>
              </parametertable>
              <parametertable name="Exp_param">
                <columns number="1">
                  <parameter name="lambda" value="1"/>
                </columns>
                <rows number="distrib.exp">
                </rows>
              </parametertable>
              <parametertable name="F_param">
                <columns number="2">
                  <parameter name="d1" value="1"/>
                  <parameter name="d2" value="1"/>
                </columns>
                <rows number="distrib.F">
                </rows>
              </parametertable>
              <parametertable name="T_param">
                <columns number="1">
                  <parameter name="t" value="1"/>
                </columns>
                <rows number="distrib.T">
                </rows>
              </parametertable>
              <parametertable name="Pearson_param">
                <columns number="4">
                  <parameter name="mean" value="1"/>
                  <parameter name="variance" value="1"/>
                  <parameter name="skewness" value="1"/>
                  <parameter name="kurtosis" value="3"/>
                </columns>
                <rows number="distrib.pearson">
                </rows>
              </parametertable>
              <parametertable name="Inv_gamma_param">
                <columns number="2">
                  <parameter name="alpha" value="1"/>
                  <parameter name="beta" value="1"/>
                </columns>
                <rows number="distrib.inv_gamma">
                </rows>
              </parametertable>
              <parametertable name="Inv_beta_param">
                <columns number="2">
                  <parameter name="alpha" value="1"/>
                  <parameter name="beta" value="1"/>
                </columns>
                <rows number="distrib.inv_beta">
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="SampleClock" type="block">
          <template name="system/ActivationOperations/SampleClock"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="top" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
            <background color="255,255,255,0"/>
            <position x="-25.892440795896405" y="153.83538818359375"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.25" rotate="1" visible="1" font="Arial,12" align="center">0.01</text>
              <text name="text2" color="0,0,0,255" clip="1" x="0.5" y="0.75" rotate="1" visible="1" font="Arial,12" align="center">0</text>
            </texts>
            <images>
              <image name="image1" file="ActivationOperations/sampleClock.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="ActivationOperations/sampleClock.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="frequ" value="0.01"/>
              <parameter name="offset" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Saturation" type="block">
          <template name="system/Hybrid/Saturation"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="81.97225189208984" y="222.14968872070312"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="Hybrid/saturation.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="Hybrid/saturation.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="upper" value="1"/>
              <parameter name="lower" value="-1"/>
              <parameter name="zc" value="1"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="SignalGenerator_1" type="block">
          <template name="system/SignalGenerators/SignalGenerator"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-32.63129425048828" y="295.662841796875"/>
            <size width="80" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Signal&#xA;generator</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="s" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;s`&quot; &quot;s``&quot;" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="firstder+firstder*secondder"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="outevent"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="xx" value="[0.0, 0.5, 0.6, 0.7, 0.8, 2.0]"/>
              <parameter name="yy" value="[0.0, 0.0, 0.1, 0.1, 0.0, 0.0]"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="outevent" value="0"/>
              <parameter name="firstder" value="0"/>
              <parameter name="secondder" value="0"/>
              <parameter name="externalActivation" value="0"/>
            </section>
            <section name="Advanced">
              <parameter name="Method" value="&apos;Linear&apos;"/>
              <parameter name="Leftside" value="&apos;Zero&apos;"/>
              <parameter name="Rightside" value="&apos;Hold&apos;"/>
            </section>
          </parameters>
        </block>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="ContTransFunc" port="1" iotype="out"/>
          <to block="Split" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="SetSignal" port="1" iotype="in"/>
          <to block="Split" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="243.3543701171875" y="257.6137390136719"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Split" port="1" iotype="out"/>
          <to block="Output" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Activation">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="SampleClock" port="1" iotype="out"/>
          <to block="ContinuousRandom" port="1" iotype="in"/>
          <pen shape="line" color="183,15,19,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="ContinuousRandom" port="1" iotype="out"/>
          <to block="Saturation" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Saturation" port="1" iotype="out"/>
          <to block="ContTransFunc" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="139.58713912963867" y="242.14968872070312"/>
            <point x="139.58713912963867" y="314.4716491699219"/>
          </points>
        </link>
        <context>f_cut=10; %Hz cut frequency low-pass filter&#xA;n_order=3; %filter order&#xA;&#xA;%Livio&apos;s filter&#xA;a=poly(-ones(1,n_order)*f_cut*2*pi);&#xA;b=a(n_order+1);&#xA;</context>
        <graphics>
          <viewport width="800" height="800" topleftx="0" toplefty="0"/>
          <window width="800" height="800" topleftx="0" toplefty="0"/>
        </graphics>
      </diagram>
      <properties>
        <property name="masked" value="0"/>
        <property name="inlinable" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="216,216,216,255"/>
        <position x="-620.3459625244143" y="61.01419067382457"/>
        <size width="72" height="36"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Bump</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters title="new block definition">
        <callback>
          <pre/>
          <post/>
        </callback>
      </parameters>
    </block>
    <block name="Sprung_Mass_Vel_Comp" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="120.53556823730469" y="49.014190673827954"/>
        <size width="60" height="60"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;Passive&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="1"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[500,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="0"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;Sprung mass velocity&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;Passive&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="QuarterCar" type="block">
      <diagram>
        <block name="RoadDisplacement" type="regular_in_port">
          <template name="system/Ports/Input"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-8.451644897460938" y="77.33636983235667"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Stroke_Passive" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="481.48834066162095" y="26.65375010172521"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="SprungMass_vel_Passive" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="481.48834066162095" y="77.33636983235665"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="2"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="SprungMass_acc_Passive" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="481.48834066162095" y="125.2678654988606"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="3"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Two-mass_susp_passive" type="block">
          <diagram>
            <block name="SpringDamper_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/SpringDamper"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="43.50298309326172" y="39.46784210205078"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="1.285" rotate="1" visible="1" font="Arial,12" align="center">d=cs</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.5" y="1.11" rotate="1" visible="1" font="Arial,12" align="center">c=ks</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/SpringDamper_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/SpringDamper_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useHeatPort"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_c" value="ks"/>
                  <parameter name="mo_d" value="cs"/>
                  <parameter name="mo_s_rel0" value="0"/>
                  <parameter name="mo_useHeatPort" value="0"/>
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_f">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_lossPower">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                  <parameter name="mo_s_nominal" value="1e-4"/>
                </section>
              </parameters>
            </block>
            <block name="Mass" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/Mass"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="39.14326477050781" y="-90.08164978027344"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="0.835" rotate="1" visible="1" font="Arial,12" align="center">m=ms</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/Mass_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/Mass_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_m" value="ms"/>
                  <parameter name="mo_L" value="0"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                </section>
              </parameters>
            </block>
            <block name="SpringDamper_2_1" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/SpringDamper"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="47.27708435058594" y="197.54362869262684"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="1.285" rotate="1" visible="1" font="Arial,12" align="center">d=cus</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.5" y="1.11" rotate="1" visible="1" font="Arial,12" align="center">c=kus</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/SpringDamper_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/SpringDamper_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useHeatPort"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                  <parameter name="mo_s_nominal" value="1e-4"/>
                </section>
                <section name="General">
                  <parameter name="mo_c" value="kus"/>
                  <parameter name="mo_d" value="cus"/>
                  <parameter name="mo_s_rel0" value="0"/>
                  <parameter name="mo_useHeatPort" value="0"/>
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_f">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_lossPower">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Mass_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/Mass"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="47.27708435058594" y="118.91610717773438"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="0.835" rotate="1" visible="1" font="Arial,12" align="center">m=mus</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/Mass_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/Mass_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_m" value="mus"/>
                  <parameter name="mo_L" value="0"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                </section>
              </parameters>
            </block>
            <block name="SpeedSensor_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/SpeedSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="-48.81524658203125" y="-42.96213912963867"/>
                <size width="50" height="50"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.9775" y="0.761" rotate="1" visible="1" font="Arial,12" align="center">v</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/SpeedSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/SpeedSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="AccSensor_1" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/AccSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="113.44412231445312" y="-127.541259765625"/>
                <size width="50" height="50"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.9875" y="0.757" rotate="1" visible="1" font="Arial,12" align="center">a</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/AccSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/AccSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="RelPositionSensor" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/RelPositionSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="379.74462890625" y="27.561599731445312"/>
                <size width="50" height="50"/>
                <rotate angle="270"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.625" y="0.9645" rotate="1" visible="1" font="Arial,12" align="center">s</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/RelPositionSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/RelPositionSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="bottom" x="0.5" y="1"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="ImplicitSplit" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="64.1432647705078" y="-17.962139129638672"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block_1" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="72.27708435058594" y="99.19197463989258"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="ToModelica" type="block">
              <template name="system/Interfaces/ToModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="35.810289382934556" y="340.50274658203125"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="value" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="FromModelica_2" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-102.37689208984375" y="-22.962139129638672"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="FromModelica_3" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="488.7717590332031" y="47.5615997314453"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="FromModelica_4" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="206.86952590942383" y="-107.54125976562501"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block_4" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="70.86296844482422" y="-0.3069038391113281"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Position" type="block">
              <template name="Modelica/Mechanics/Translational/Sources/Position"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="top" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,127,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="49.77708435058612" y="282.4954528808595"/>
                <size width="50" height="55"/>
                <rotate angle="270"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,10" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.950000" y="0.725000" rotate="1" visible="1" font="Arial,10" align="center">exact=</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.950000" y="0.861364" rotate="1" visible="1" font="Arial,10" align="center">true</text>
                  <text name="text4" color="128,128,128,0" clip="0" x="0.300000" y="0.725000" rotate="1" visible="1" font="Arial,10" align="center">s_ref</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sources/Position_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sources/Position_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="flange" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.45454545454545453"/>
                    <size width="5" height="5"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,127,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                  </graphics>
                </port>
                <port name="s_ref" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.45454545454545453"/>
                    <size width="10" height="10"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,0,127,255" thickness="1.5"/>
                    <background color="0,0,127,255"/>
                  </graphics>
                </port>
                <port name="support" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useSupport"/>
                  </properties>
                  <graphics>
                    <location position="right" x="0.5" y="0.9090909090909091"/>
                    <size width="7.5" height="7.500000000000001"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="175,190,175,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_useSupport" value="0"/>
                  <parameter name="mo_exact" value="true"/>
                  <parameter name="mo_f_crit" value=""/>
                  <parameter name="mo_w_crit" value="&apos;2 * Modelica.Constants.pi * f_crit&apos;"/>
                  <parameter name="mo_af" value="1.3617"/>
                  <parameter name="mo_bf" value="0.618"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_s_ref">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="RoadDisplacement" type="regular_in_port">
              <template name="system/Ports/Input"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-115.48306274414068" y="327.50274658203125"/>
                <size width="36" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="1"/>
                  <parameter name="outsize" value="[-1;-2]"/>
                  <parameter name="outtyp" value="&apos;inherit&apos;"/>
                  <parameter name="dept" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Suspension Stroke" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="518.7853240966797" y="34.56159973144529"/>
                <size width="48" height="36.00000000000001"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="1"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Sprung Mass Velocity" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-177.89544677734375" y="-35.96213912963867"/>
                <size width="48" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="2"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Sprung Mass Acceleration" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="233.71693420410156" y="-120.54125976562501"/>
                <size width="48" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="3"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="AccSensor_1" port="1" iotype="in"/>
              <to block="Mass" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="64.14326477050781" y="-102.54125976562501"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mass" port="1" iotype="out"/>
              <to block="ImplicitSplit" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpringDamper_2" port="1" iotype="out"/>
              <to block="Block_1" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="68.5029830932617" y="99.19197463989258"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ImplicitSplit" port="2" iotype="out"/>
              <to block="SpeedSensor_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_4" port="1" iotype="out"/>
              <to block="SpringDamper_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="68.50298309326173" y="-0.3069038391113281"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_1" port="1" iotype="out"/>
              <to block="Mass_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ImplicitSplit" port="1" iotype="out"/>
              <to block="Block_4" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="64.1432647705078" y="-0.3069038391113281"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_1" port="2" iotype="out"/>
              <to block="RelPositionSensor" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="404.74462890625" y="99.19197463989251"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RoadDisplacement" port="1" iotype="out"/>
              <to block="ToModelica" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_2" port="1" iotype="out"/>
              <to block="Sprung Mass Velocity" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RelPositionSensor" port="2" iotype="out"/>
              <to block="FromModelica_3" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_3" port="1" iotype="out"/>
              <to block="Suspension Stroke" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="AccSensor_1" port="1" iotype="out"/>
              <to block="FromModelica_4" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_4" port="1" iotype="out"/>
              <to block="Sprung Mass Acceleration" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpeedSensor_2" port="1" iotype="out"/>
              <to block="FromModelica_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RelPositionSensor" port="1" iotype="out"/>
              <to block="Block_4" port="2" iotype="out"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="404.74462890625" y="-0.3069038391112535"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpringDamper_2_1" port="1" iotype="out"/>
              <to block="Position" port="1" iotype="out"/>
              <pen shape="line" color="0,127,0,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ToModelica" port="1" iotype="out"/>
              <to block="Position" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="72.27708435058155" y="345.5027465820311"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mass_2" port="1" iotype="out"/>
              <to block="SpringDamper_2_1" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <context/>
            <graphics>
              <viewport width="800" height="800" topleftx="0" toplefty="0"/>
              <window width="800" height="800" topleftx="0" toplefty="0"/>
            </graphics>
          </diagram>
          <properties>
            <property name="masked" value="0"/>
            <property name="inlinable" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="0,176,80,254"/>
            <position x="109.68929128417955" y="51.33636983235667"/>
            <size width="216" height="72"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="RoadDisplacement" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Suspension Stroke" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Sprung Mass Velocity" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Sprung Mass Acceleration" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters title="new block definition">
            <callback>
              <pre/>
              <post/>
            </callback>
          </parameters>
        </block>
        <block name="SetSignal" type="block">
          <template name="system/Routing/SetSignal"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="423.24151611328125" y="174.546875"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Acc</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="tag" value="&apos;Acc&apos;"/>
              <parameter name="tagvis" value="&apos;Global&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Split" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="387.8493330932616" y="138.34207153320312"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="RoadDisplacement" port="1" iotype="out"/>
          <to block="Two-mass_susp_passive" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_passive" port="3" iotype="out"/>
          <to block="Split" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="387.84933309326146" y="111.3363698323576"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_passive" port="2" iotype="out"/>
          <to block="SprungMass_vel_Passive" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_passive" port="1" iotype="out"/>
          <to block="Stroke_Passive" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="387.7634718872069" y="63.33636983235667"/>
            <point x="387.7634718872069" y="36.65375010172521"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="SetSignal" port="1" iotype="in"/>
          <to block="Split" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="387.8493330932616" y="194.546875"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Split" port="1" iotype="out"/>
          <to block="SprungMass_acc_Passive" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="387.8493330932616" y="135.2678654988606"/>
          </points>
        </link>
        <context/>
        <graphics>
          <viewport width="800" height="800" topleftx="0" toplefty="0"/>
          <window width="800" height="800" topleftx="0" toplefty="0"/>
        </graphics>
      </diagram>
      <properties>
        <property name="masked" value="0"/>
        <property name="inlinable" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-498.37242126464844" y="-88.98580932617205"/>
        <size width="528" height="336"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="fiat 500e.png" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="Sys.jpg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="Stroke_Passive" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="SprungMass_vel_Passive" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="SprungMass_acc_Passive" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="RoadDisplacement" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters title="new block definition">
        <callback>
          <pre/>
          <post/>
        </callback>
      </parameters>
    </block>
    <block name="Road Scope" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-597.1192016601567" y="-15.407760620115653"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="1">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="1"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[400,400]"/>
          <parameter name="winPos" value="[-1,-2]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="1"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Block_2" type="regular_split">
      <template name="system/Links/Split"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="64,64,64,255"/>
        <position x="-521.0133972168105" y="79.01419067382665"/>
        <size width="0" height="0"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
        </section>
      </parameters>
    </block>
    <block name="BobyqaOpt" type="block">
      <template name="system/Optimization/BobyqaOpt"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-293.80908203125" y="404.3437194824219"/>
        <size width="80" height="60"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Optimization</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="p0" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="cost" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="p" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="cost_opt" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
        <port name="end" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="bottom"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="xL" value="[20000;2000]"/>
          <parameter name="xU" value="[40000;4000]"/>
          <parameter name="RhoBeg" value="100"/>
          <parameter name="RhoEnd" value="5"/>
          <parameter name="Npt" value="-1"/>
          <parameter name="MaxIter" value="100"/>
          <parameter name="minmax" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Constant" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-520.1032257080078" y="408.3437194824219"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">cs</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="cs"/>
          <parameter name="typ" value="&apos;double&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Constant_1" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-519.9026336669922" y="359.3437194824219"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">ks</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="ks"/>
          <parameter name="typ" value="&apos;double&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Constant_2" type="block">
      <template name="system/SignalGenerators/Constant"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-474.789794921875" y="553.98291015625"/>
        <size width="72" height="36"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">__counter__</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="C" value="__counter__"/>
          <parameter name="typ" value="&apos;double&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="EventGenerate" type="block">
      <template name="system/ActivationOperations/EventGenerate"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-293.84564208984375" y="305.957275390625"/>
        <size width="80" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.4" rotate="1" visible="1" font="Arial,12" align="center">Event time(s)</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;time_final&quot;" type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="nevout"/>
          </properties>
          <graphics>
            <location position="bottom"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="nevout" value="1"/>
          <parametertable name="etimes">
            <columns number="1">
              <parameter name="time" value="1.0"/>
            </columns>
            <rows number="nevout">
              <row>
                <value>time_final</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Mux" type="block">
      <template name="system/Routing/Mux"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-417.51788330078125" y="365.3437194824219"/>
        <size width="12" height="84"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="nin" value="2"/>
          <parametertable name="inports">
            <columns number="1">
              <parameter name="size" value="1"/>
            </columns>
            <rows number="nin">
              <row>
                <value>1</value>
              </row>
              <row>
                <value>1</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Demux" type="block">
      <template name="system/Routing/Demux"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-150.17211914062503" y="377.3437194824218"/>
        <size width="12" height="84"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="nout"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="nout" value="2"/>
          <parametertable name="outports">
            <columns number="1">
              <parameter name="size" value="1"/>
            </columns>
            <rows number="nout">
              <row>
                <value>1</value>
              </row>
              <row>
                <value>1</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="ToBase" type="block">
      <template name="system/SignalExporters/ToBase"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-118.17211914062503" y="371.3437194824218"/>
        <size width="60" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">To Base&#xA;ks</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="varname" value="&apos;ks&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Display" type="block">
      <template name="system/SignalViewers/Display"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-60.574981689453125" y="286.61456298828125"/>
        <size width="96" height="48"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.500000" y="0.500000" rotate="1" visible="1" font="Arial,10" align="center">    20100&#xA;     2000</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="0" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="0" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="fmt" value="&apos;%6g&apos;"/>
          <parameter name="dt" value="1"/>
          <parameter name="showatend" value="0"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Power" type="block">
      <template name="system/MathOperations/Power"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-474.8102111816406" y="471.54229736328125"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">u1^2</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="power" value="2"/>
          <parameter name="ptype" value="&apos;Nothing&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="Integral" type="block">
      <template name="system/Dynamical/Integral"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-404.14404296875" y="461.54229736328125"/>
        <size width="40" height="60"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
        </texts>
        <images>
          <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1+saturationstatus*satur"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="&quot;x&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="reinit"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="reinit"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="x0" value="0"/>
          <parameter name="reinit" value="0"/>
          <parameter name="satur" value="0"/>
          <parametertable name="limit">
            <columns number="3">
              <parameter name="max" value="[1]"/>
              <parameter name="min" value="[-1]"/>
              <parameter name="zcross" value="1"/>
            </columns>
            <rows number="satur">
            </rows>
          </parametertable>
          <parameter name="saturationstatus" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="ScopeXY" type="block">
      <template name="system/SignalViewers/ScopeXY"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-308.19818115234375" y="561.98291015625"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scopeXY.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scopeXY.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="externalActivation" value="1"/>
          <parameter name="winSize" value="[-1,-1]"/>
          <parameter name="winPos" value="[-1,-1]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Overlay&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="plotTitle" value="&apos;&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xInterval" value="[NaN,NaN]"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parameter name="curvesStyle" value="0"/>
        </section>
      </parameters>
    </block>
    <block name="ActivationSplit" type="activation_split">
      <template name="system/Links/ActivationSplit"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="ellipse" visible="1" color="183,15,19,255" thickness="1.5"/>
        <background color="183,15,19,255"/>
        <position x="-253.84564208984375" y="378.07525634765614"/>
        <size width="0" height="0"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
        </section>
      </parameters>
    </block>
    <block name="GetSignal" type="block">
      <template name="system/Routing/GetSignal"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-565.0518188476562" y="471.54229736328125"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Acc</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="tag" value="&apos;Acc&apos;"/>
        </section>
      </parameters>
    </block>
    <block name="Block" type="regular_split">
      <template name="system/Links/Split"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="64,64,64,255"/>
        <position x="-339.3427734375" y="491.54229736328125"/>
        <size width="0" height="0"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
        </section>
      </parameters>
    </block>
    <block name="Scope" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-454.10821533203125" y="622.73974609375"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="1"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[400,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="1"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Block_1" type="regular_split">
      <template name="system/Links/Split"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="64,64,64,255"/>
        <position x="-513.524658203125" y="491.54229736328125"/>
        <size width="0" height="0"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
        </section>
      </parameters>
    </block>
    <block name="Split" type="regular_split">
      <template name="system/Links/Split"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="64,64,64,255"/>
        <position x="-181.17294311523438" y="419.3437194824219"/>
        <size width="0" height="0"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
        </section>
      </parameters>
    </block>
    <block name="ToBase_1" type="block">
      <template name="system/SignalExporters/ToBase"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-45.2171630859375" y="399.3437194824219"/>
        <size width="60" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">To Base&#xA;cs</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
          <parameter name="varname" value="&apos;cs&apos;"/>
          <parameter name="externalActivation" value="0"/>
        </section>
      </parameters>
    </block>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="1" iotype="out"/>
      <to block="Suspension_Stroke_Comparison" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="2" iotype="out"/>
      <to block="Sprung_Mass_Vel_Comp" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="3" iotype="out"/>
      <to block="Sprung_Mass_Acc_Comparison" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Bump rounded" port="1" iotype="out"/>
      <to block="Block_2" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Road Scope" port="1" iotype="in"/>
      <to block="Block_2" port="2" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-521.0133972168105" y="4.59223937988429"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Block_2" port="1" iotype="out"/>
      <to block="QuarterCar" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Activation">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="EventGenerate" port="1" iotype="out"/>
      <to block="ActivationSplit" port="1" iotype="in"/>
      <pen shape="line" color="183,15,19,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Constant_1" port="1" iotype="out"/>
      <to block="Mux" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-443.8436050415039" y="379.3437194824219"/>
        <point x="-443.8436050415039" y="386.3437194824219"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Mux" port="1" iotype="out"/>
      <to block="BobyqaOpt" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-395.51788330078125" y="419.3437194824219"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Demux" port="1" iotype="in"/>
      <to block="Split" port="1" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Demux" port="1" iotype="out"/>
      <to block="ToBase" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Integral" port="1" iotype="in"/>
      <to block="Power" port="1" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Integral" port="1" iotype="out"/>
      <to block="Block" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Activation">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="ScopeXY" port="1" iotype="in"/>
      <to block="ActivationSplit" port="2" iotype="out"/>
      <pen shape="line" color="183,15,19,255" thickness="1.5"/>
      <points>
        <point x="-288.1981811523437" y="378.07525634765625"/>
      </points>
    </link>
    <link name="" type="Activation">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="ActivationSplit" port="1" iotype="out"/>
      <to block="BobyqaOpt" port="1" iotype="in"/>
      <pen shape="line" color="183,15,19,255" thickness="1.5"/>
      <points>
        <point x="-253.84564208984375" y="375.1504974365235"/>
        <point x="-253.80908203125" y="375.1504974365235"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="GetSignal" port="1" iotype="out"/>
      <to block="Block_1" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Constant_2" port="1" iotype="out"/>
      <to block="ScopeXY" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="ScopeXY" port="2" iotype="in"/>
      <to block="Block" port="2" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-339.3427734375" y="591.98291015625"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Block" port="1" iotype="out"/>
      <to block="BobyqaOpt" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-311.805419921875" y="491.54229736328125"/>
        <point x="-311.805419921875" y="449.3437194824219"/>
      </points>
    </link>
    <link name="" type="explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Scope" port="1" iotype="in"/>
      <to block="Block_1" port="2" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-513.524658203125" y="642.73974609375"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Block_1" port="1" iotype="out"/>
      <to block="Power" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Mux" port="2" iotype="in"/>
      <to block="Constant" port="1" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Display" port="1" iotype="in"/>
      <to block="Split" port="2" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-181.17294311523438" y="310.61456298828125"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Split" port="1" iotype="in"/>
      <to block="BobyqaOpt" port="1" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Demux" port="2" iotype="out"/>
      <to block="ToBase_1" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-91.69464111328126" y="440.3437194824218"/>
        <point x="-91.69464111328126" y="419.3437194824219"/>
      </points>
    </link>
    <annotation name="Annotation_1" type="text">
      <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
      <background color="0,0,0,0"/>
      <position x="-542.2127685546875" y="-127.1178970336914"/>
      <size width="550" height="58"/>
      <rotate angle="0"/>
      <text font="Arial,18" color="0,0,0,255">           FIAT 500e classic configuration (active suspension)&#xA;</text>
    </annotation>
    <context/>
    <graphics>
      <viewport width="800" height="800" topleftx="0" toplefty="0"/>
      <window width="800" height="800" topleftx="0" toplefty="0"/>
    </graphics>
  </diagram>
  <simulation>
    <properties>
      <property name="InitialTime" value="0"/>
      <property name="FinalTime" value="time_final"/>
      <property name="RealTimeScale" value="2"/>
      <property name="AbsoluteErrorTolerance" value="0.000000001"/>
      <property name="RelativeErrorTolerance" value="0.000000001"/>
      <property name="MaxTimeInterval" value="-1"/>
      <property name="TimeTolerance" value="-1"/>
      <property name="Solver" value="radauv_imp"/>
      <property name="MaxStepSize" value="1e-3"/>
      <property name="InitialStepSize" value="-1"/>
      <property name="MinimalStepSize" value="-1"/>
      <property name="ZeroCrossingThreshold" value="-1"/>
      <property name="NumberOfConsecutiveZeroCrossing" value="-1"/>
      <property name="TimeToleranceZeroCrossing" value="-1"/>
      <property name="AlgebraicSolver" value="idacalc"/>
      <property name="JacobianMethod" value="1"/>
    </properties>
  </simulation>
</model>
