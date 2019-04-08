//
//  Copyright © 2019 nc43tech. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the  License);
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an  AS IS BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import AsyncDisplayKit
import DisplayKit
import Foundation
import Kernel

protocol VIPERCoordinatorDelegate: AnyObject {}

final class VIPERCoordinator: Coordinator<UIViewController> {

    private let node: VIPERNode
    private let reducer: VIPERReducer
    weak var delegate: VIPERCoordinatorDelegate?

    init(reducer: VIPERReducer, node: VIPERNode) {
        self.reducer = reducer
        self.node = node
        super.init(type: .normal, content: ASViewController(node: node))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func start() {
        super.start()
        navigationController?.pushViewController(self, animated: true)
        reducer.subscribe { [weak self] state in
        guard let self = self else { return }
            //Do something...
        }
        node.delegate = self
    }
}

extension VIPERCoordinator: VIPERViewDelegate {}
