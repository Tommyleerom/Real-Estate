import { Switch, Route } from "react-router-dom";
import Navbar from './components/NavBar';
import About from "./pages/About";
import Examples from "./pages/Examples";
import Avaliable from "./pages/Avaliable";
import Home from "./pages/Home";
import Things from "./pages/Things";

function App() {
  return (
    <>
    <Navbar />
    <Switch>
        <Route exact path="/" component={Avaliable} />
        <Route exact path="/examples" component={Examples} />
    </Switch>
    </>
  );
}

export default App;
