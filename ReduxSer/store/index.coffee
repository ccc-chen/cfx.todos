import { getStore } from 'cfx.redux'

import constants from './constants'
import actions from './actions'
import reducers from './reducers'

store = getStore {
  appName: 'userApp'
  reducers
}

export {
  constants
  actions
  reducers
  getStore
  store
}
