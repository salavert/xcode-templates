import ComposableArchitecture
import MisticaCommon
import MisticaSwiftUI
import SwiftUI

@Reducer
public struct ___VARIABLE_productName:identifier___Feature {
    @ObservableState
    public struct State: Equatable {
        public init() {}
    }

    public enum Action: BindableAction, Equatable {
        case binding(BindingAction<State>)
    }

    public init() {}

    public var body: some ReducerOf<Self> {
        BindingReducer()
        self.core
    }

    @ReducerBuilder<State, Action>
    public var core: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .binding:
                return .none
            }
        }
    }
}

public struct ___VARIABLE_productName:identifier___View: View {
    @Perception.Bindable var store: StoreOf<___VARIABLE_productName:identifier___Feature>

    public init(store: StoreOf<___VARIABLE_productName:identifier___Feature>) {
        self.store = store
    }

    public var body: some View {
        Text("Create your view")
    }
}

#Preview {
    MisticaConfig.brandStyle = .tu
    return ___VARIABLE_productName:identifier___View(
        store: Store(initialState: ___VARIABLE_productName:identifier___Feature.State()) {
            ___VARIABLE_productName:identifier___Feature()
        }
    )
}
