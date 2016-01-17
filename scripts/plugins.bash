#!/bin/bash


function remove {

    echo ""
    echo "-------------------"
    echo " Removing Plugins"
    echo "-------------------"
    echo ""
    cordova plugin rm cordova-plugin-splashscreen #启动屏幕
    cordova plugin rm cordova-plugin-statusbar #状态栏
    cordova plugin rm cordova-plugin-console # "Console"
    cordova plugin rm cordova-plugin-network-information #网络状态
    cordova plugin rm cordova-plugin-contacts #通讯录
    cordova plugin rm cordova-plugin-device # 设备访问器
    cordova plugin rm cordova-plugin-dialogs # 对话框
    cordova plugin rm cordova-plugin-file #文件读写
    cordova plugin rm cordova-plugin-file-transfer # 文件上传下载
    cordova plugin rm cordova-plugin-inappbrowser #内置浏览器
    cordova plugin rm cordova-plugin-x-toast #提示然后消息 tip
    cordova plugin rm cordova-plugin-vibration #震动
    cordova plugin rm cordova-plugin-zip # 文件压缩
    cordova plugin rm ionic-plugin-keyboard
    cordova plugin rm cordova-plugin-statusbar # "Status Bar"
    cordova plugin rm phonegap-plugin-contentsync
    cordova plugin rm cordova-base64-to-gallery
    cordova plugin rm phonegap-plugin-push
    cordova plugin rm cordova-plugin-qq #qqlogin
    cordova plugin rm cordova-plugin-qqsdk #qq shared
    cordova plugin rm cordova-plugin-actionsheet
    cordova plugin rm cordova-plugin-app-version #appversion
    cordova plugin rm cordova-background-geolocation-lt #应用地图移动信息
    cordova plugin rm phonegap-plugin-barcodescanner #二维码扫描
    cordova plugin rm cordova-plugin-battery-status #电池状态
    cordova plugin rm cordova-plugin-ble-central #蓝牙支持 android 4.3
    cordova plugin rm cordova-plugin-bluetooth-serial #蓝牙读写
    cordova plugin rm cordova-plugin-flashlight
    cordova plugin rm cordova-plugin-calendar #日历
    cordova plugin rm cordova-plugin-camera #摄像头处理
    cordova plugin rm cordova-plugin-datepicker
    cordova plugin rm cordova-plugin-device-motion
    cordova plugin rm cordova-plugin-device-orientation
    cordova plugin rm cordova-plugin-geolocation #地理位置
    cordova plugin rm cordova-plugin-globalization #全球化
    cordova plugin rm de.appplant.cordova.plugin.local-notification #本地通知
    cordova plugin rm cordova-plugin-media-capture
    cordova plugin rm cordova-plugin-media
    cordova plugin rm cordova-plugin-nativeaudio
    cordova plugin rm cordova-universal-clipboard #剪切板
    cordova plugin rm cordova-plugin-imagepicker
    cordova plugin rm de.appplant.cordova.plugin.badge
    #cordova plugin rm https://github.com/petermetz/cordova-plugin-ibeacon.git # ibeacon蓝牙设备
    #cordova plugin rm https://github.com/fiscal-cliff/phonegap-plugin-brightness.git #屏幕亮度读取设置
    #cordova plugin rm https://github.com/EddyVerbruggen/VideoCapturePlus-PhoneGap-Plugin.git
}

function install {
    echo ""
    echo "------------------"
    echo "Installing Plugins"
    echo "------------------"
    echo ""
    cordova plugin add cordova-plugin-splashscreen #启动屏幕
    cordova plugin add cordova-plugin-statusbar #状态栏
    cordova plugin add cordova-plugin-console # "Console"
    cordova plugin add cordova-plugin-network-information #网络状态
    cordova plugin add cordova-plugin-contacts #通讯录
    cordova plugin add cordova-plugin-device # 设备访问器
    cordova plugin add cordova-plugin-dialogs # 对话框
    cordova plugin add cordova-plugin-file #文件读写
    cordova plugin add cordova-plugin-file-transfer # 文件上传下载
    cordova plugin add cordova-plugin-inappbrowser #内置浏览器
    cordova plugin add cordova-plugin-x-toast #提示然后消息 tip
    cordova plugin add cordova-plugin-vibration #震动
    cordova plugin add cordova-plugin-zip # 文件压缩
    cordova plugin add ionic-plugin-keyboard
    cordova plugin add cordova-plugin-statusbar # "Status Bar"
    cordova plugin add phonegap-plugin-contentsync
    cordova plugin add cordova-base64-to-gallery
    cordova plugin add phonegap-plugin-push
    cordova plugin add cordova-plugin-qq #qqlogin
    cordova plugin add cordova-plugin-qqsdk #qq shared
    cordova plugin add cordova-plugin-actionsheet
    cordova plugin add cordova-plugin-app-version #appversion
    cordova plugin add cordova-background-geolocation-lt #应用地图移动信息
    cordova plugin add phonegap-plugin-barcodescanner #二维码扫描
    cordova plugin add cordova-plugin-battery-status #电池状态
    cordova plugin add cordova-plugin-ble-central #蓝牙支持 android 4.3
    cordova plugin add cordova-plugin-bluetooth-serial #蓝牙读写
    cordova plugin add cordova-plugin-flashlight
    cordova plugin add cordova-plugin-calendar #日历
    cordova plugin add cordova-plugin-camera #摄像头处理
    cordova plugin add cordova-plugin-datepicker
    cordova plugin add cordova-plugin-device-motion
    cordova plugin add cordova-plugin-device-orientation
    cordova plugin add cordova-plugin-geolocation #地理位置
    cordova plugin add cordova-plugin-globalization #全球化
    cordova plugin add de.appplant.cordova.plugin.local-notification #本地通知
    cordova plugin add cordova-plugin-media-capture
    cordova plugin add cordova-plugin-media
    cordova plugin add cordova-plugin-nativeaudio
    cordova plugin add cordova-universal-clipboard #剪切板
    cordova plugin add cordova-plugin-imagepicker
    cordova plugin add de.appplant.cordova.plugin.badge
    #cordova plugin add https://github.com/EddyVerbruggen/VideoCapturePlus-PhoneGap-Plugin.git
    #cordova plugin add https://github.com/petermetz/cordova-plugin-ibeacon.git # ibeacon蓝牙设备
    #cordova plugin add https://github.com/fiscal-cliff/phonegap-plugin-brightness.git #屏幕亮度读取设置

}
function addplat {
    cordova platforms add android
    cordova platforms add ios
    cordova platforms add browser
    cordova platforms add blackberry10
}

function removeplat {
    cordova platforms remove android
    cordova platforms remove ios
    cordova platforms remove browser
    cordova platforms remove blackberry10
}

if [ "$1" == "remove" ]; then
    remove
elif [ "$1" == "install" ]; then
    install
elif [ "$1" == "addplat" ]; then
      addplat
elif [ "$1" == "removeplat" ]; then
      removeplat
else
    remove
    install
fi
