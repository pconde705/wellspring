import {combineReducers} from 'redux';
import sessionReducer from './session_reducer';
import errorsReducer from './errors_reducer';
import projectsReducer from './projects_reducer';
import rewardsReducer from './rewards_reducer';

const rootReducer = combineReducers ({
  session: sessionReducer,
  errors: errorsReducer,
  projects: projectsReducer,
  rewards: rewardsReducer
});

export default rootReducer;
