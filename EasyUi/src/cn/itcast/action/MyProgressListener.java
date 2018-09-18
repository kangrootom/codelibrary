package cn.itcast.action;

import org.apache.commons.fileupload.ProgressListener;

public class MyProgressListener implements ProgressListener {

	@Override
	public void update(long pBytesRead, long pContentLength, int pItems) {
		// TODO Auto-generated method stub
		long notReadBytes = pContentLength - pBytesRead;
		double readPercent = pBytesRead*100 / pContentLength;
		System.out.println(readPercent+"%");
	}

}
