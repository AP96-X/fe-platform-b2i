pipeline {
    agent { label 'master' }

    stages {
        stage('获取制品文件') {
            steps {
                sh 'cp ../fe-platform-main/dist/dist.tar.gz ./main.tar.gz'
                sh 'cp ../fe-platform-administration/dist/dist.tar.gz ./administration.tar.gz'
                sh 'cp ../fe-platform-dataIntegration/dist/dist.tar.gz ./dataIntegration.tar.gz'
                sh 'cp ../fe-platform-dataservices/dist/dist.tar.gz ./dataservices.tar.gz'
                sh 'cp ../fe-platform-datastandard/dist/dist.tar.gz ./datastandard.tar.gz'
                sh 'cp ../fe-platform-EHR-Browser/dist/dist.tar.gz ./EHR-Browser.tar.gz'
                sh 'cp ../fe-platform-four-libraries/dist/dist.tar.gz ./four-libraries.tar.gz'
                sh 'cp ../fe-platform-login/dist/dist.tar.gz ./login.tar.gz'
                sh 'cp ../fe-platform-masterdata/dist/dist.tar.gz ./masterdata.tar.gz'
                sh 'cp ../fe-platform-model/dist/dist.tar.gz ./model.tar.gz'
                sh 'cp ../fe-platform-OM/dist/dist.tar.gz ./OM.tar.gz'
                sh 'cp ../fe-platform-property/dist/dist.tar.gz ./property.tar.gz'
                sh 'cp ../fe-platform-sys-setting/dist/dist.tar.gz ./sys-setting.tar.gz'
                sh 'cp ../fe-platform-workbench/dist/dist.tar.gz ./workbench.tar.gz'
            }
        }
        stage('建立制品文件夹') {
            steps {
                sh 'mkdir -p ./main/microApps/administration'
                sh 'mkdir -p ./main/microApps/dataIntegration'
                sh 'mkdir -p ./main/microApps/dataservices'
                sh 'mkdir -p ./main/microApps/datastandard'
                sh 'mkdir -p ./main/microApps/EHR-Browser'
                sh 'mkdir -p ./main/microApps/fourLibraries'
                sh 'mkdir -p ./main/microApps/login'
                sh 'mkdir -p ./main/microApps/masterdata'
                sh 'mkdir -p ./main/microApps/model'
                sh 'mkdir -p ./main/microApps/OM'
                sh 'mkdir -p ./main/microApps/property'
                sh 'mkdir -p ./main/microApps/sysSetting'
                sh 'mkdir -p ./main/microApps/workbench'
            }
        }
        stage('构建镜像') {
            steps {
                sh 'tar zxvf main.tar.gz -C ./main'
                sh 'tar zxvf administration.tar.gz -C ./main/microApps/administration'
                sh 'tar zxvf dataIntegration.tar.gz -C ./main/microApps/dataIntegration'
                sh 'tar zxvf dataservices.tar.gz -C ./main/microApps/dataservices'
                sh 'tar zxvf datastandard.tar.gz -C ./main/microApps/datastandard'
                sh 'tar zxvf EHR-Browser.tar.gz -C ./main/microApps/EHR-Browser'
                sh 'tar zxvf four-libraries.tar.gz -C ./main/microApps/fourLibraries'
                sh 'tar zxvf login.tar.gz -C ./main/microApps/login'
                sh 'tar zxvf masterdata.tar.gz -C ./main/microApps/masterdata'
                sh 'tar zxvf model.tar.gz -C ./main/microApps/model'
                sh 'tar zxvf OM.tar.gz -C ./main/microApps/OM'
                sh 'tar zxvf property.tar.gz -C ./main/microApps/property'
                sh 'tar zxvf sys-setting.tar.gz -C ./main/microApps/sysSetting'
                sh 'tar zxvf workbench.tar.gz -C ./main/microApps/workbench'
            }
        }
        stage('打包镜像') {
            steps {
                sh 'docker build -t fe-platform-frontend:v1.0.0 -f frontend.Dockerfile .'
            }
        }
        
        stage('上传镜像') {
            steps {
                echo '上传镜像'
            }
        }
    }
}
