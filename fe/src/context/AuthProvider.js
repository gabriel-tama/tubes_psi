import { createContext, useState } from "react";

const AuthContext = createContext({});

export const AuthProvider = ({ children }) => {
	const [auth, setAuth] = useState({});
	const [trig, setTrig] = useState(false);

	return (
		<AuthContext.Provider value={{ auth, setAuth, trig, setTrig }}>
			{children}
		</AuthContext.Provider>
	);
};

export default AuthContext;
