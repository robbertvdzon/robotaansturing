package com.vdzon.robotclient;

import com.vdzon.robitapi.RobotAansturing;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;


@Slf4j
public class RobotAansturingClient implements RobotAansturing {

  private final CloseableHttpClient httpClient = HttpClients.createDefault();
  private String host = "";

  public RobotAansturingClient(String host) {
    this.host = host;
  }

  @Override
  public void moveto(int x, int y) {
    get(host+"/api/move/"+x+"/"+y);
  }

  @Override
  public void homeVert() {
    get(host+"/api/home_vert");
  }


  @Override
  public void homeHor() {
    get(host+"/api/home_hor");
  }

  @Override
  public void sleep() {
    get(host+"/api/sleep");
  }

  @Override
  public void clamp() {
    get(host+"/api/clamp");
  }

  @Override
  public void release() {
    get(host+"/api/release");
  }

  @Override
  public void rebuild() {
    get(host+"/api/rebuild");
  }

  @Override
  public void restart() {
    get(host+"/api/restart");
  }

  @Override
  public void waitUntilReady() {
    get(host+"/api/sleep");
  }


  private void get(String url) {
    try {
      System.out.println("call:"+url);
      HttpGet request = new HttpGet(url);
      try (CloseableHttpResponse response = httpClient.execute(request)) {
        System.out.println(response.getStatusLine().toString());
//        HttpEntity entity = response.getEntity();
//        Header headers = entity.getContentType();
//        System.out.println(headers);
//
//        if (entity != null) {
//          // return it as a String
//          String result = EntityUtils.toString(entity);
//          System.out.println(result);
//        }

      }
    } catch (Exception e) {
      e.printStackTrace();
    }
  }


}
