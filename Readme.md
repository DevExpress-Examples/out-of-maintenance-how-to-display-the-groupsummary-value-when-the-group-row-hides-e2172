<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128539559/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2172)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Solution.sln](./CS/Solution.sln) (VB: [Solution.sln](./VB/Solution.sln))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to display the GroupSummary value when the group row hides
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2172/)**
<!-- run online end -->


<p>This example demonstrates how to set custom formatting for grouped rows according to the following conditions:</p><p>1. Hide group rows;<br />
2. All data rows should be expanded;<br />
3. Show GroupSummary value;<br />
4. Hide the group indent column.</p><p>Based on these conditions, the following approach has been introduced:</p><p>1. To hide all group rows, the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_HtmlRowPreparedtopic"><u>ASPxGridView.HtmlRowPrepared</u></a> event is handled.</p><p>2. To expand rows, the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_ExpandAlltopic"><u>ASPxGridView.ExpandAll</u></a> method is used.</p><p>3. To hide all indent cells, the following styles are defined: dxgvIndentCell, dxgvIndentCell dxgv, dxgvDataRow td.dxgvIndentCell and dxgvHeader.</p><p>4. To show only required headers, it is necessary to define a CSS class for all visible columns:</p>

```aspx
<dx:GridViewDataTextColumn  FieldName="CategoryID"  VisibleIndex="3" GroupIndex="0" SortIndex="0"  SortOrder="Ascending"><newline/>
      <HeaderStyle CssClass="HeaderClass" /><newline/>
</dx:GridViewDataTextColumn><newline/>

```

<p>According to <a href="http://stackoverflow.com/questions/249103/ie7-and-the-css-table-cell-property"><u>this</u></a> article, the header style should be the following:</p>

```css
td.HeaderClass {    display: table-cell;    display: block;  /* IE7 and below: http://stackoverflow.com/questions/249103/ie7-and-the-css-table-cell-property */ }
```

<p> </p>

<br/>


