package com.vdzon.robot;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vdzon.MoveRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;

public class RobotAansturingClient implements RobotAansturing{
    ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public void moveTo(double pos, int arm) {

    }

    @Override
    public double getPos(int arm) {
        return 0;
    }

    @Override
    public void move(MoveRequest moveRequest) {
        System.out.println("Move to "+moveRequest);

        try {

            DefaultHttpClient httpClient = new DefaultHttpClient();
            HttpPost postRequest = new HttpPost(
                    "http://192.168.178.71:8080/move");

            String json = objectMapper.writeValueAsString(moveRequest);
            System.out.println("json="+json);
            StringEntity input = new StringEntity(json);
            input.setContentType("application/json");
            postRequest.setEntity(input);

            HttpResponse response = httpClient.execute(postRequest);
            System.out.println("resp:"+response.getStatusLine().getStatusCode());
            httpClient.getConnectionManager().shutdown();

        } catch (MalformedURLException e) {

            e.printStackTrace();

        } catch (IOException e) {

            e.printStackTrace();

        }

    }
}
