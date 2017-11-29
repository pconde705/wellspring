import {combineReducers} from 'redux';
import sessionReducer from './session_reducer';
import errorsReducer from './errors_reducer';
import {projectsReducer, searchReducer} from './projects_reducer';
import rewardsReducer from './rewards_reducer';
import backersReducer from './backers_reducer';

const rootReducer = combineReducers ({
  session: sessionReducer,
  errors: errorsReducer,
  projects: projectsReducer,
  rewards: rewardsReducer,
  backers: backersReducer,
  search: searchReducer
});

export default rootReducer;
