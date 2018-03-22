// ** CheckboxSelectionModel add by wuch **
```JS
this.sm = new Ext.grid.CheckboxSelectionModel({
  renderer : function(value, metaData, record) {
    switch (true) {
      case record.get("status_b") == "0" :
      case record.get("status_c") == "0" :
      case record.get("status_c") == "3" :
      case record.get("status_c") == "6" :
      case record.get("status_c") == "4" && record.get("status_plan") == "2" :
      case record.get("status_l") == "2" :
      case record.get("status_wsj_l") == "5" :
      case record.get("status_company") == "7" :
      case record.get("status_company") == "8" :
        return Ext.grid.CheckboxSelectionModel.prototype.renderer.apply(this, arguments);
        break;
      default :
        return;
    }
  },
  listeners : {
    beforerowselect : function(s, n, k, r) {
      switch (true) {
        case r.get("status_b") == "0" :
        case r.get("status_c") == "0" :
        case r.get("status_c") == "3" :
        case r.get("status_c") == "6" :
        case r.get("status_c") == "4" && r.get("status_plan") == "2" :
        case r.get("status_l") == "2" :
        case r.get("status_wsj_l") == "5" :
        case r.get("status_company") == "7" :
        case r.get("status_company") == "8" :
          break;
        default :
          return false;
      }
    }
  },
  handleMouseDown : function(g, rowIndex, e) {
    // 单击选中自动勾选CheckBox
    if (e.button !== 0 || this.isLocked()) {
      return;
    }
    var view = this.grid.getView();
    if (e.shiftKey && !this.singleSelect && this.last !== false) {
      var last = this.last;
      this.selectRange(last, rowIndex, e.ctrlKey);
      this.last = last; // reset the last
      view.focusRow(rowIndex);
    } else {
      var isSelected = this.isSelected(rowIndex);
      if (isSelected) {
        this.deselectRow(rowIndex);
      } else if (!isSelected || this.getCount() > 1) {
        this.selectRow(rowIndex, true);
        view.focusRow(rowIndex);
      }
    }
  },
  onMouseDown : function(e, t) {
    if (e.button === 0 && t.className == 'x-grid3-row-checker') {
      // Only fire if left-click
      e.stopEvent();
      var row = e.getTarget('.x-grid3-row');
      // mouseHandled flag check for a duplicate selection
      // (handleMouseDown) call
      if (!this.mouseHandled && row) {
        // alert(this.grid.store.getCount());
        var gridEl = this.grid.getEl();// 得到表格的EL对象
        var hd = gridEl.select('div.x-grid3-hd-checker');// 得到表格头部的全选CheckBox框
        var index = row.rowIndex;
        if (this.isSelected(index)) {
          this.deselectRow(index);
          var isChecked = hd.hasClass('x-grid3-hd-checker-on');
          // 判断头部的全选CheckBox框是否选中，如果是，则删除
          if (isChecked) {
            hd.removeClass('x-grid3-hd-checker-on');
          }
        } else {
          this.selectRow(index, true);
          // 判断选中当前行时，是否所有的行都已经选中，如果是，则把头部的全选CheckBox框选中
          if (gridEl.select('div.x-grid3-row-selected').elements.length == gridEl.select('div.x-grid3-row').elements.length) {
            hd.addClass('x-grid3-hd-checker-on');
          };
        }
      }
    }
    this.mouseHandled = false;
  }
});
this.cm = new Ext.grid.ColumnModel(this.getCM(this.sm, items));
var cfg = {
  sm : this.sm,
}
this.grid.on("rowdblclick", grid.getSelectionModel().selectRow(index), this);

onRowClick : function(grid, index, e) {
  var rs = this.grid.getSelectionModel().getSelections();
  Ext.each(rs, function(r) {
    switch (true) {
      case r.get("status_b") == "0" :
      case r.get("status_c") == "0" :
      case r.get("status_c") == "3" :
      case r.get("status_c") == "6" :
      case r.get("status_c") == "4" && r.get("status_plan") == "0" :
      case r.get("status_wsj_l") == "5" :
      case r.get("status_company") == "7" :
      case r.get("status_company") == "8" :
        break;
      default :
        grid.getSelectionModel().deselectRow(index);
    }
  });
}
```