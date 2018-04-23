# How to display the GroupSummary value when the group row hides


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


