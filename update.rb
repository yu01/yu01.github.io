
%x( git add . )
%x( git commit -a -m "update app." )
%x( git push origin master) 
if %x( git push origin master) 
  %x(curl -X POST -H "X-ChatWorkToken:6ba6e747289567740e689a8fd8d30888" -d "body=Kawaii+がアップデートされました。http://kawaii-inc:morip@kawaii-ios.herokuapp.com/ こちらよりインストールをお願いします。" "https://api.chatwork.com/v1/rooms/21328147/messages")
end
