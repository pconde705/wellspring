import React from 'react';
// import GreetingContainer from './greeting/greeting_container';
import SessionFormContainer from './session_form/session_form_container';
import {Route} from 'react-router-dom';
import {AuthRoute, ProtectedRoute} from '../util/route_util';
import Navbar from './navbar/navbar_container';
import Statistics from './statistics'
import ProjectIndexContainer from './project_index/project_index_container';
import ProjectFormContainer from './project_form/project_form_container';

const App = () => (
  <div>
    <Navbar />
    <Route exact path="/" component={Statistics} />

    <ProtectedRoute path="/project/new" component={ProjectFormContainer} />
    <Route exact path="/" component={ProjectIndexContainer} />
    <AuthRoute path="/login" component={SessionFormContainer} />
    <AuthRoute path="/signup" component={SessionFormContainer} />
  </div>
);

export default App;

// We no longer use GreetingContainer

// You must always import the container, NOT the jsx file.
// The container imports the jsx file through connect.

// You want exact path or else the ProjectIndexContainer will render on every page
