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

import DisplayKit
import Foundation
import Kernel
import NeedleFoundation

protocol VIPERPluginExtension: PluginExtension {}

final class VIPERComponent: PluginizedComponent<EmptyDependency, VIPERPluginExtension, VIPERNonCoreComponent> {
    
    var reducer: VIPERReducer {
        return VIPERReducer()
    }
    
    var viewController: VIPERViewController {
        return VIPERViewController()
    }
    
}

final class VIPERNonCoreComponent: NonCoreComponent<EmptyDependency> {}

final class VIPERBuilder: Builder<VIPERComponent> {

    func build() -> VIPERCoordinator {
        let component = componentBuilder()
        return VIPERCoordinator(reducer: component.reducer,
                               viewController: component.viewController)
    }
}
