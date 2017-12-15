import { reduxActions } from 'cfx.redux-actions'
{ handleActions } = reduxActions
import { mergeReduce } from 'cfx.redux'
import usersReducers from '../models/users/reducers'

initialState =
  x: console.log()
  # todosList: []
  
users = handleActions

  USER_SAVE: usersReducers.save

, initialState

export default mergeReduce {
  users
}
, initialState
