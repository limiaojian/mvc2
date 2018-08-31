layui.use(['layer', 'form', 'table', 'common'], function() {
	var $ = layui.$,
		layer = layui.layer,
		form = layui.form,
		table = layui.table,
		common = layui.common;
	
	var tableIns = table.render({
		elem: '#userTables',
		id: 'userTables',
		cols: [
			[{
				checkbox: true,
				width: 60,
				fixed: true
			}, {
				field: 'id',
				hide:true
			},{
				field: 'username',
				title: '用户名',
				align: 'center',
			},{
				field: 'createdate',
				title: '日期',
				align: 'center'
			},{
				title: '操作',
				width: 260,
				align: 'center',
				toolbar: '#userbar',
				fixed:"right"
			}]
		],
		url: '/user/list',
		page: true,
		even: true,
	});

	//监听工具条
	table.on('tool(userTables)', function(obj) {
		var data = obj.data;
		if (obj.event === 'edit') {
			var index = layer.open({
				title: "修改",
				type: 2,
				skin:'larry-green',
				offset: ['85px', '530px'],
				area: ['500px', '250px'],
				content: '/user/form?id=' + data.id,
			});
		}else if (obj.event === 'del') {
			layer.confirm('确定要删除吗?', function(index) {
				var ajaxReturnData;
		        $.ajax({
		            url: '/user/delete',
		            type: 'post',
		            async: false,
		            data: {id:data.id},
		            success: function (data) {
		                ajaxReturnData = data;
		            }
		        });
		        //删除结果
		        if (ajaxReturnData == '0') {
		            table.reload('userTables');
		            layer.msg('删除成功', {icon: 1});
		        } else {
		        	layer.msg('删除失败', {icon: 5});
		        }
				layer.close(index);
			});
		}
	});

	$('#larry_group .layui-btn').on('click',function(){
          var type = $(this).data('type');
          active[type] ? active[type].call(this) : '';
	});

	var active = {
        add:function(){
        	var index = layer.open({
				title: "新增",
				type: 2,
				skin:'larry-green',
				offset: ['85px', '530px'],
				area: ['500px', '250px'],
				content: "/user/form",
			});
           //common.larryCmsMessage('最近好累，还是过段时间在写吧！','error');
        },
        edit:function(){
        	
        },
        del:function(){
        	
        }
	};
});