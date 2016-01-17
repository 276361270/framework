var gulp = require('gulp');
var del = require('del');
var babel = require("gulp-babel");
var browserSync = require('browser-sync').create();
var sass = require('gulp-sass');
var reload = browserSync.reload;
//混淆压缩使用
var minifycss = require('gulp-minify-css');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
//var rename = require('gulp-rename');
var obfuscate = require('gulp-obfuscate');
// 拷贝清理文件
gulp.task('clean', function () {
    return del(['www/*']);
});
//拷贝开发目录中得资源
gulp.task('copy', function () {
    gulp.src('app/css/*')
        .pipe(minifycss())
        .pipe(gulp.dest('www/css'));
    //拷贝图片
    gulp.src('app/img/*')
        .pipe(gulp.dest('www/img'));
    //拷贝主文件
    return gulp.src('app/index.html')
        .pipe(gulp.dest('www'));
});
//文件变动 编译 压缩 然后拷贝到目标文件夹
gulp.task("js", function () {
    return gulp.src("app/js/*.js")
        .pipe(babel())
        //.pipe(uglify())
        // 所有的文件集成到 index.js 中
        .pipe(concat('index.js'))
        .pipe(obfuscate())
        .pipe(uglify())
        .pipe(gulp.dest("www/js"))
        .pipe(reload({stream: true}));
});
//开发调试中得js
gulp.task("js-dev", function () {
    return gulp.src("app/js/*.js")
        .pipe(babel())
        //.pipe(uglify())
        // 所有的文件集成到 index.js 中
        .pipe(concat('index.js'))
        .pipe(gulp.dest("www/js"))
        .pipe(reload({stream: true}));
});

// // 静态服务器 + 监听 scss/html 文件
gulp.task('serve', ['clean', 'copy', 'sass', 'js-dev'], function () {
    browserSync.init({
        files: "./www/*.*",
        server: {
            baseDir: "./www"
        }
    });
    //css 文件变动编译
    gulp.watch("app/scss/*.scss", ['sass']);
    //react js 文件变动编译
    gulp.watch("app/js/*.js", ['js-watch']);
    //index change
    gulp.watch("app/*.html", ['html-watch']);
    //静态文件改变变动
    gulp.watch("www/*.*").on('change', reload);
});
//sass文件编译
gulp.task('sass', function () {
    return gulp.src("app/scss/*.scss")
        .pipe(sass())
        .pipe(gulp.dest("www/css"))
        .pipe(reload({stream: true}));
});
//js变动重新加载
gulp.task('js-watch', ['js-dev']);
//html 文件有变动重新
gulp.task('html-watch', ['copy']);

gulp.task('default', ['serve'], function () {
    console.log('this is the default task')
});
//发布压缩对应的程序到www 提供给打包使用
gulp.task('publish', ['clean', 'copy', 'sass', 'js'], function () {
    console.log("app publish over");
});

