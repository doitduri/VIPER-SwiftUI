# VIPER-SwiftUI


VIPER 패턴을 학습 하면서 만든 todo app입니다.


<img src="![Hnet com-image](https://user-images.githubusercontent.com/26545623/129050720-6aaf4625-97e8-412a-8b32-d4c86a5c3e58.gif)">

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



