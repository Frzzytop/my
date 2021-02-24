

/*window.onload=function(){*/
var btn=document.getElementById('btn')
var username=document.getElementById('username')
var password=document.getElementById('password')
btn.onclick=function(){
  let res;
  const xhr = new XMLHttpRequest();
  var usernameValue=username.value;
  var passwordValue=password.value;
  var params='username'+usernameValue+'&password'+passwordValue
  xhr.open('post','http://121.196.155.183:8000/serve/user/login');
  xhr.setRequestHeader('Content-Type','application/json');
  xhr.send(JSON.stringify({username:usernameValue,password:passwordValue}));
  xhr.onload=function(){
       console.log(xhr.responseText)
       var responseText=JSON.parse(xhr.responseText)
       var message=responseText.message
       alert(message);
  }
  };
  function goto(){
    window.open("首页2.html")
  }

//};//
  //这是
// 简单做个封装，就是把它放到一个函数中去，要用的时候直接调用函数就行了，这就是封装的意义
/*function useXhr (method, url, successFunc, failFunc) {
  const xhr = new XMLHttpRequest();

 xhr.open('get', 'http://musicapi.leanapp.cn/personalized',true);
  // 这里用函数参数来替换下，实现多次复用
  xhr.open(method, url, true);

 xhr.onreadystatechange = () => {
    if (xhr.readyState === 4) {
      if ((xhr.status >= 200 && xhr.status < 300) || xhr.status == 304) {
        const res = JSON.parse(xhr.responseText);
        console.log(res);
        console.log('请求成功');
//        // 这时候就可以执行成功得到响应的函数了,同时将响应的内容res传进去，那么在successFunc中就可以获取到这个响应res了
        successFunc(res);
      } else {
        console.log('请求失败');
        // 同样可以执行失败时候的函数
        failFunc();
      }
    }
  };

}*/