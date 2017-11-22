
import {connect} from 'react-redux';
import SessionForm from './session_form';
import {login, signup} from '../../actions/session_actions';

const mapStateToProps = (state, ownProps) => {
  // debugger;
  return {
  loggedIn: Boolean(state.sessionReducer.currentUser),
  errors: state.errorsReducer.session,
  formType: ownProps.location.pathname.slice(1)
}};

const mapDispatchToProps = (dispatch, ownProps) => { // curly braces allow if statements
  if (ownProps.location.pathname.slice(1) === 'login') {
    return {
        processForm: user => dispatch(login(user))
      }
    } else {
      return {
        processForm: user => dispatch(signup(user))
      }
    }
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
