const gulp = require("gulp");
const clean = require("gulp-minify-css");
gulp.task("css",function(){
	return gulp.src("public/css/*.css")
	.pipe(gulp.dest("dist/public/css"))
		.pipe(clean())
		.pipe(gulp.dest("dist/public/css/minify"))
})
gulp.task("scripts",function(){
	return gulp.src("public/js/*.js")
	.pipe(gulp.dest("dist/public/js"))
})
gulp.task("copyHtml",function(){
	return gulp.src("views/*.art")
	.pipe(gulp.dest("dist/views"))
})
gulp.task("copyImg",function(){
	return gulp.src("public/img/**/*")
	.pipe(gulp.dest("dist/public/img"))
})
gulp.task("build",gulp.series(["css","scripts","copyHtml","copyImg"],function(err,data){
	console.log("项目启动成功")
}))
