/*
 * Ext JS Library 1.1
 * Copyright(c) 2006-2007, Ext JS, LLC.
 * licensing@extjs.com
 *
 * http://www.extjs.com/license
 *
 * @author Lingo
 * @since 2007-09-19
 * http://code.google.com/p/anewssystem/
 */
/**
 * 声明Ext.lingo命名控件
 * TODO: 完全照抄，作用不明
 */
Ext.namespace("Ext.lingo");
/**
 * 封装表单操作的工具类.
 *
 */
Ext.lingo.FormUtils = function() {
    var isApply = true;
/*new Ext.form.TextField({
                            fieldLabel: '密码',
                            name: 'password',
                            inputType: "password",
                            width:150,
                            allowBlank:false
                        })
var forms = new Ext.form.Form({
        labelWidth: 40, // label settings here cascade unless overridden
        url:'save-form.php'
    });

    //性别布局开始
    forms.container();
    forms.column({width:90},
    new Ext.form.Radio({
                                        fieldLabel: '性别',
                                        name: 'sex',
                                        boxLabel: '男',
                    value:'male'
                                })
    );
    forms.column({hideLabels :true,width:50},
    new Ext.form.Radio({
                                        fieldLabel: '性别',
                                        name: 'sex',
                                        boxLabel: '女',
                    value:'female'
                                })
    );
    forms.end();
    //性别布局结束
    forms.addButton('Save');
    forms.addButton('Cancel');

    forms.render('forms');
*/
    return {
        // 创建<input type="text">输入框
        createTextField : function(meta) {
            var field = new Ext.form.TextField({
                allowBlank : meta.allowBlank == undefined ? false : meta.allowBlank,
                vType      : meta.vType,
                cls        : meta.type == "password" ? meta.cls : null,
                width      : meta.vWidth,
                id         : meta.id,
                name       : meta.id,
                style      : (meta.vType == "integer" || meta.vType == "number" ? "text-align: right;" : ""),
                readOnly   : meta.readOnly,
                defValue   : meta.defValue,
                alt        : meta.alt,
                maxLength  : meta.maxlength ? meta.maxlength : Number.MAX_VALUE,
                minLength  : meta.minlength ? meta.minlength : 0,
                minValue   : meta.minvalue ? meta.minvalue : 0,
                maxValue   : meta.maxvalue ? meta.maxvalue : Number.MAX_VALUE
            });
            if(meta.readOnly) {
                field.style += "color:#656B86;";
            }
            //if(meta.value != "" && meta.format == "date") {
            //    field.value = datagrids[0].date(meta.value);
            //}
            if (isApply) {
                field.applyTo(meta.id);
            }
            if(meta.defValue) {
                field.setValue(meta.defValue);
            }
            return field;
        },

        // 创建日期选择框
        createDateField : function(meta) {
            var field = new Ext.form.DateField({
                id          : meta.id,
                name        : meta.id,
                allowBlank  : meta.allowBlank == undefined ? false : eval(meta.allowBlank),
                format      : meta.format ? meta.format : "Y年m月d日",
                readOnly    : true,
                width       : meta.vWidth,
                defValue    : meta.defValue,
                vType       : "date",
                alt         : meta.alt,
                setAllMonth : meta.setAllMonth ? el.setAllMonth : false
            });
            console.error(field.format);
            if (isApply) {
                field.applyTo(meta.id);
            }
            if(meta.defValue) {
                field.setValue(meta.defValue);
            } else {
                field.setValue(new Date());
            }
            return field;
        },

        // 创建下拉框
        createComboBox : function(meta) {
            var field = new Ext.form.ComboBox({
                id         : meta.id,
                name       : meta.id,
                allowBlank : meta.allowBlank == undefined ? false : eval(meta.allowBlank),
                transform  : meta.id,
                vType      : "comboBox",
                width      : meta.vWidth
            });
            return field;
        },

        // 创建单选框
        createRadio : function(meta) {
            var fields = new Array();

            for (var k = 0; k < meta.values.length; k++) {
                var value = meta.values[k];

                var field = new Ext.form.Radio({
                    fieldLabel : meta.qtip,
                    name       : meta.id,
                    boxLabel   : value.name,
                    value      : value.id,
                    vType      : "radio"
                });
                if (meta.defValue && value.id == meta.defValue) {
                    field.checked = true;
                }
                if (isApply) {
                    field.applyTo(meta.id + value.id);
                }
                field.el.dom.parentNode.style.display = "inline";
                fields[fields.length] = field;
            }
            return fields;
        },

        // 创建treeField
        createTreeField : function(meta) {
            var el = Ext.get(meta.id).dom;
            var config = {
                title        : meta.qtip,
                rootId       : 0,
                height       : 200,
                dataTag      : meta.url,
                treeHeight   : 150,
                beforeSelect : function(){}
            };
            var field = new Ext.lingo.TreeField({
                id         : el.id,
                name       : el.id,
                allowBlank : false,
                width      : 200,
                treeConfig : config
            });
            field.vType = "treeField";

            //if(不是EditorGrid && 不是Form) object.applyTo(el.id);
            if (isApply) {
                field.applyTo(el.id);
            }
            return field;
        },

        // 为对话框，生成div结构
        createDialogContent : function(meta) {
            var id = meta.id;
            var title = meta.title ? meta.title : " 详细配置 ";

            // 内容
            var dialogContent = document.getElementById(id);
            var contentDiv = document.createElement("div");
            contentDiv.id = id + "-content";
            contentDiv.appendChild(dialogContent);

            // 消息
            var dialogMessage = document.createElement("div");
            var waitMessage = document.createElement("div");
            var waitText = document.createElement("div");
            dialogMessage.id = "dlg-msg";
            waitMessage.id = "post-wait";
            waitMessage.className = "posting-msg";
            waitText.className = "waitting";
            waitText.innerHTML = "正在保存，请稍候...";
            waitMessage.appendChild(waitText);
            dialogMessage.appendChild(waitMessage);

            // 对话框需要的外框
            var dialogDiv = document.createElement("div");
            var dialog_head = document.createElement("div");
            var dialog_body = document.createElement("div");
            var dlg_tab = document.createElement("div");
            var dlg_help = document.createElement("div");
            var helpContent = document.createElement("div");
            var dialog_foot = document.createElement("div");
            dialogDiv.id = id + "-dialog-content";
            dialogDiv.style.visibility = "hidden";
            dialog_head.className = "x-dlg-hd";
            dialog_body.className = "x-dlg-bd";
            dialog_foot.className = "x-dlg-ft";
            dlg_tab.className = "x-dlg-tab";
            dlg_tab.title = title;
            dlg_help.className = "x-dlg-tab";
            dlg_help.title = " 帮助 ";
            helpContent.innerHTML = "<div id='help-content'><div id='standard-panel'>帮助...</div></div><div id='temp-content'></div>";
            dlg_help.appendChild(helpContent);
            dialog_body.appendChild(dlg_tab);
            dialog_body.appendChild(dlg_help);
            dialog_foot.appendChild(dialogMessage);
            dialogDiv.appendChild(dialog_head);
            dialogDiv.appendChild(dialog_body);
            dialogDiv.appendChild(dialog_foot);

            document.body.appendChild(dialogDiv);
            document.body.appendChild(contentDiv);
        },

        // 生成一个modal为true的对话框
        createDialog : function(meta) {
            var id = meta.id;
            var width = meta.width ? meta.width : 600;
            var height = meta.height ? meta.height : 400;
            var dialog = new Ext.BasicDialog(id, {
                modal     : false,
                autoTabs  : true,
                width     : width,
                height    : height,
                shadow    : false,
                minWidth  : 200,
                minHeight : 100,
                closable  : true,
                autoCreate : true
            });
            return dialog;
        },

        // 新建可布局的对话框
        createLayoutDialog : function(dialogName) {
            var thisDialog = new Ext.LayoutDialog(dialogName, {
                modal     : false,
                autoTabs  : true,
                proxyDrag : true,
                resizable : true,
                width     : 650,
                height    : 500,
                shadow    : true,
                center: {
                    autoScroll     : true,
                    tabPosition    : 'top',
                    closeOnTab     : true,
                    alwaysShowTabs : false
                }
            });
            thisDialog.addKeyListener(27, thisDialog.hide, thisDialog);
            thisDialog.addButton('关闭', function() {thisDialog.hide();});

            return thisDialog;
        }
    };
}();
