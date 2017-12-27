/**
 * 
 */
$(function() {
	var i = 1;
	function doPost(){
		fetch('./list.do?type=json&page='+i)
		.then(function(response) {
			return response.json();
		})
		.then(function(articles) {
			var $ul = $('#list-articles');
			articles.forEach(function(art) {
				$ul.append('<li class="list-group-item">' 
						+ '<h3>' + art.title + '</h3>'
						+ '<p>' + art.content + '</p>'
						+'<button data-id="'+ art.id +'">删除</button>'
						+ '</li>');
				console.log("zzzzz");
			})
		})
		.then(function() {
			$('ul .del-btn').on('click', function() {
				var $self = $(this);
				var id = $self.data('id');
				fetch('./del.do?ajax=true&id=' + id)
					.then(function(response) {
						return response.json();
					})
					.then(function(res) {
						if(res.ok === 1) {
							$self.parent().remove();
						}
					})
			})
		})
	}
	
	doPost();
	
	
	//鼠标移动事件
	$(document).scroll(function(){
		  if($(document).scrollTop() + $(window).height() >= $(document).height()){
			  i ++;
			  doPost();
			  console.log("dododdo");
		  }
		});
}) 