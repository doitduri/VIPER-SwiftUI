# VIPER-SwiftUI


VIPER 패턴을 학습 하면서 만든 todo app입니다.


![Hnet com-image](https://user-images.githubusercontent.com/26545623/129050800-7e6976ea-28b9-43e7-a0fd-c24b260e9260.gif)

주요 디렉토리 별 파일설명


```
├── Modules
   ├── Todo
   |   ├── View
   |   |    └──  ..
   |   ├── TodoEnvironment.swift
   |   ├── TodoViewModel.swift // Presenter를 관찰 가능하게 만들어줌 (Presenter-Interactor 중간)
   |   ├── TodoEntity.swift // VIPER - Entity
   |   ├── TodoInteractor.swift // VIPER - Interactor
   |   ├── Todo.swift // Todo 모듈 관리자
   |   ├── TodoRouter.swift // VIPER - Router
   |   └── TodoPresenter.swift // VIPER - Presenter
   ├── Module.swift
   └── BaseModule.swift
├── Common
    ├── Http.swift
    └── Publisher+on.swift
   .....
```



