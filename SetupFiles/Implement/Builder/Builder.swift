//
//  __PREFIX__BuilderImpl.swift
//  Kuri
//
//  Created by __USERNAME__ on __DATE__.
//  Copyright © __YEAR__ __USERNAME__. All rights reserved.
//

import UIKit

struct __PREFIX__BuilderImpl: __PREFIX__Builder {
    func build() -> UIViewController {
        let viewController = __PREFIX__View()
        viewController.inject(
            presenter: __PREFIX__PresenterImpl(
                view: viewController,
                wireframe: __PREFIX__WireframeImpl(
                    viewController: viewController
                ),
                useCase: __PREFIX__UseCaseImpl(
                    repository: __PREFIX__RepositoryImpl (
                        dataStore: __PREFIX__DataStoreImpl()
                    ),
                    translator: __PREFIX__TranslatorImpl()
                )
            )
        )
        return viewController
    }
}

