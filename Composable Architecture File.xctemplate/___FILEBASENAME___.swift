import ComposableArchitecture
import SwiftUI

public struct ___FILEBASENAMEASIDENTIFIER___Reducer: ReducerProtocol {
    @Dependency(\.mainQueue) var mainQueue

    public struct State: Equatable {}

    public enum Action: BindableAction, Equatable {
        case binding(BindingAction<State>)
        case onAppear
    }

    public init() {}

    public var body: some ReducerProtocol<State, Action> {
        BindingReducer()
        Reduce { _, action in
            switch action {
            case .binding:
                return .none
            case .onAppear:
                return .none
            }
        }
    }
}

struct ___FILEBASENAMEASIDENTIFIER___View: View {
    let store: StoreOf<___FILEBASENAMEASIDENTIFIER___Reducer>

    public init(store: StoreOf<___FILEBASENAMEASIDENTIFIER___Reducer>) {
        self.store = store
    }

    var body: some View {
        WithViewStore(self.store) { viewStore in
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .onAppear { viewStore.send(.onAppear) }
        }
    }
}

#if DEBUG
    struct ___FILEBASENAMEASIDENTIFIER___View_Previews: PreviewProvider {
        static var previews: some View {
            ___FILEBASENAMEASIDENTIFIER___View(
                store: Store(
                    initialState: ___FILEBASENAMEASIDENTIFIER___Reducer.State(),
                    reducer: ___FILEBASENAMEASIDENTIFIER___Reducer()
                )
            )
        }
    }
#endif
