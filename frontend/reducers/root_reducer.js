import sessionReducer from './session_reducer';
import errorsReducer from './errors_reducer';
import {combineReducers} from 'redux';

const rootReducer = combineReducers ({
  sessionReducer, // same thing as writing sessionReducer: sessionReducer
  errorsReducer
});

export default rootReducer;
