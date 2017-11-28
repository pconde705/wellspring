import { combineReducers } from 'redux';
import sessionErrorsReducer from './session_errors_reducer';
import projectErrorsReducer from './project_errors_reducer';
import rewardErrorsReducer from './reward_errors_reducer';

const errorsReducer = combineReducers ({
  session: sessionErrorsReducer,
  project: projectErrorsReducer,
  reward: rewardErrorsReducer
});

export default errorsReducer;
