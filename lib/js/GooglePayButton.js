// @flow
import React from 'react';
import {requireNativeComponent, TouchableOpacity, StyleSheet} from 'react-native';

const GooglePayImage = requireNativeComponent('GooglePayImageView');

const styles = StyleSheet.create({
    button: {
      width: 300,
      height: 60,
      justifyContent: 'center',
      alignItems: 'center',
    },
});

export const GooglePayButton = ({onPress = () => {}, style = {}}) => (
    <TouchableOpacity onPress={onPress}>
        <GooglePayImage style={[styles.button, style]} />
    </TouchableOpacity>
)
