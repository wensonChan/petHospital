const base = {
    get() {
        return {
            url : "http://localhost:8080/petHospital/",
            name: "petHospital",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/petHospital/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "宠物医院管理系统"
        } 
    }
}
export default base
