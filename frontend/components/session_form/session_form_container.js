/*jshint esversion: 6 */
import {connect} from 'react-redux';
import SessionForm from './session_form';
import {login, signup, clearErrors} from '../../actions/session_actions';

const mapStateToProps = (state, ownProps) => {
  // debugger;
  return {
  loggedIn: Boolean(state.session.currentUser),
  errors: state.errors.session,
  formType: ownProps.location.pathname.slice(1)
};};

const mapDispatchToProps = (dispatch, ownProps) => { // curly braces allow if statements
  if (ownProps.location.pathname.slice(1) === 'login') {
    return {
        processForm: user => dispatch(login(user)),
        clearErrors: () => dispatch(clearErrors())
      };
    } else {
      return {
        processForm: user => dispatch(signup(user)),
        clearErrors: () => dispatch(clearErrors())
      };
    }
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionForm);
